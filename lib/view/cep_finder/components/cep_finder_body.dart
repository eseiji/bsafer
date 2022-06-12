import 'package:bsafer/services/api_viacep.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CEPFinderBody extends StatefulWidget {
  const CEPFinderBody({Key? key}) : super(key: key);

  @override
  State<CEPFinderBody> createState() => _CEPFinderBodyState();
}

class _CEPFinderBodyState extends State<CEPFinderBody> {
  final _cepTextFieldController = TextEditingController();
  late Map<String, dynamic> _cepInfo;
  late String _cep;
  final _apiViaCEP = ApiViaCEP();
  bool validCEP = false;

  final cepMaskFormatter = MaskTextInputFormatter(
    mask: '#####-###',
    filter: {
      "#": RegExp(r'\d'),
    },
    type: MaskAutoCompletionType.lazy,
  );

  void findCEP() async {
    validCEP = false;
    _cep = _cepTextFieldController.text;
    final response = await _apiViaCEP.findCEP(_cep);
    if (response.containsKey('statusCode')) {
      setState(() {
        validCEP = false;
      });
    } else {
      setState(() {
        validCEP = true;
        _cepInfo = response;
        if (_cepInfo["localidade"].isNotEmpty && _cepInfo["uf"].isNotEmpty) {
          _cepInfo["localidade"] =
              '${_cepInfo["localidade"]}-${_cepInfo["uf"]}';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xff121517),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        maxLength: 9,
                        controller: _cepTextFieldController,
                        inputFormatters: [cepMaskFormatter],
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF252A34),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          hintText: 'CEP',
                          hintStyle: const TextStyle(color: Colors.white),
                          suffixIcon: IconButton(
                            onPressed: findCEP,
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                validCEP
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputDecorator(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF252A34),
                              labelText: 'Rua',
                              labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              _cepInfo["logradouro"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          _cepInfo.containsValue('complemento')
                              ? InputDecorator(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFF252A34),
                                    labelText: 'Complemento',
                                    labelStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white.withOpacity(0.2),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    _cepInfo["complemento"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              : const SizedBox(height: 0, width: 0),
                          InputDecorator(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF252A34),
                              labelText: 'Bairro',
                              labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              _cepInfo["bairro"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          InputDecorator(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF252A34),
                              labelText: 'Localidade',
                              labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              _cepInfo["localidade"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(height: 0, width: 0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
