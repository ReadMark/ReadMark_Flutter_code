import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final String acting;
  final bool src;

  const TextInputField({super.key, required this.acting, this.src = false});

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  bool _obscure = true;

  void initState() {
    super.initState();
    _obscure = widget.src; // src=true일 때만 감춤 시작
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 16),
      child: TextField(
        obscureText: widget.src ? _obscure : false,
        decoration: InputDecoration(
          hintText: widget.acting,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          suffixIcon: widget.src
              ? IconButton(
                  icon: Icon(
                    _obscure
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
