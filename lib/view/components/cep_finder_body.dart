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
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color(0xFF252A34),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              _cepInfo["logradouro"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          _cepInfo.containsValue('complemento')
                              ? Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF252A34),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    _cepInfo["complemento"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : const SizedBox(height: 0, width: 0),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color(0xFF252A34),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              _cepInfo["bairro"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color(0xFF252A34),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: _cepInfo["localidade"],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                children: [
                                  const TextSpan(
                                    text: '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _cepInfo["uf"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
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
