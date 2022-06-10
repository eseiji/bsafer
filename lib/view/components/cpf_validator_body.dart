import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CPFValidatorBody extends StatefulWidget {
  const CPFValidatorBody({Key? key}) : super(key: key);

  @override
  State<CPFValidatorBody> createState() => _CPFValidatorBodyState();
}

class _CPFValidatorBodyState extends State<CPFValidatorBody> {
  final _cpfTextFieldController = TextEditingController();
  bool _cpfValidity = false;

  void validateCPF(String cpf) {
    if (GetUtils.isCpf(cpf)) {
      setState(() {
        _cpfValidity = true;
      });
    } else {
      setState(() {
        _cpfValidity = false;
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: _cpfValidity ? Colors.blueAccent : Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: _cpfValidity ? Colors.blueAccent : Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _cpfValidity ? 'Válido' : 'Inválido',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    controller: _cpfTextFieldController,
                    onChanged: validateCPF,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF252A34),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: 'CPF',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
