import 'package:flutter/material.dart';

class ReuseTextFormField extends StatelessWidget {
  const ReuseTextFormField(
      {Key? key,
      required this.labelText,
      required this.validatorMassage,
      required this.keyboardtype})
      : super(key: key);
  final String labelText;
  final String validatorMassage;
  final TextInputType keyboardtype;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        label: Text(
          labelText,
          style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 18.0,
              fontWeight: FontWeight.w700),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return validatorMassage;
        }
        return null;
      },
    );
  }
}

class ButtonDecorated extends StatelessWidget {
  const ButtonDecorated({
    Key? key,
    required this.buttonLabelText,
    required GlobalKey<FormState> formKey,
    required this.textMessageAfterValidate,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  final String textMessageAfterValidate;
  final String buttonLabelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              textMessageAfterValidate,
              style: const TextStyle(fontSize: 18.0, color: Colors.black54),
            )));
          }
        },
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.red,
            minimumSize: const Size(200.0, 50.0)),
        child: Text(buttonLabelText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
