import 'package:flutter/material.dart';

class TextFieldStyled extends StatefulWidget {
  const TextFieldStyled({Key? key}) : super(key: key);

  @override
  State<TextFieldStyled> createState() => _TextFieldStyledState();
}

class _TextFieldStyledState extends State<TextFieldStyled> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(15),
            width: 400,
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(
                  color: Colors.deepPurple,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                helperText: 'Поле для поиска заметок',
                helperStyle: TextStyle(
                  color: Colors.black38,
                ),
                hintText: 'Ввелите значение',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                  gapPadding: 20,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
