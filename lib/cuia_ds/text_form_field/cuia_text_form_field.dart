// ignore_for_file: must_be_immutable, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

class CuiaTextFormField extends StatefulWidget {
  const CuiaTextFormField({
    required this.controller,
    this.onChanged,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.validateRules,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final Widget? prefixIcon;
  final bool obscureText;
  final List<Rule>? validateRules;

  @override
  State<CuiaTextFormField> createState() => _CuiaTextFormFieldState();
}

class _CuiaTextFormFieldState extends State<CuiaTextFormField> {
  String? error;

  String? validator() {
    List<String> res = <String>[];

    for (var e in widget.validateRules ?? []) {
      if (e == Rule.required) {
        if (widget.controller.text.isEmpty) {
          res.add(_Rule.required);
        }
      }

      if (e == Rule.email) {
        if (!CuiaRegex.email(widget.controller.text)) {
          res.add(_Rule.email);
        }
      }

      if (e == Rule.password) {
        if (!CuiaRegex.password(widget.controller.text)) {
          res.add(_Rule.password);
        }
      }

      if (e == Rule.fullname) {
        if (!CuiaRegex.fullname(widget.controller.text)) {
          res.add(_Rule.invalid);
        }
      }
    }

    if (res.isNotEmpty) {
      // res.join(", ") => retorna todos os erros em uma string
      setState(() => error = res.first);
    } else {
      setState(() => error = null);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: error != null ? Border.all(color: Colors.red) : null,
            color: const Color(0xfff5f5f7),
          ),
          child: TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            validator: (_) => validator(),
            // validator: (str) {
            //   setState(() => error = str);
            //   if (widget.validator != null) {
            //     widget.validator!(str);
            //   }
            //   return null;
            // },
            textAlignVertical: TextAlignVertical.center,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              isDense: true,
              border: InputBorder.none,
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(10, 22, 10, 10),
                      child: widget.prefixIcon,
                    )
                  : null,
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                color: const Color(0xff8b8fa8),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        if (error != null)
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Text(
              error!,
              style: const TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}

enum Rule {
  required,
  email,
  password,
  fullname,
}

class _Rule {
  static String invalid = "Campo inválido";
  static String required = 'Campo obrigatório';
  static String email = 'E-mail inválido';
  static String password =
      'Senha inválida\n\nrequer:\n8+ caracteres,\n1+ caractere maiúscula,\n1+ caractere minúscula,\n1+ números,\n1+ caractere especial.';
}