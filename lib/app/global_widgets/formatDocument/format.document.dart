import 'package:flutter/services.dart';

class FormatDocumentTextInputFormatter extends TextInputFormatter {
  String type;
  FormatDocumentTextInputFormatter(this.type);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = StringBuffer();
    switch (type) {
      case 'nit':
        {
          if (newTextLength >= 5) {
            newText.write(
                newValue.text.substring(0, usedSubstringIndex = 4) + '-');
            if (newValue.selection.end >= 4) selectionIndex++;
          }
          if (newTextLength >= 11) {
            newText.write(
                newValue.text.substring(4, usedSubstringIndex = 10) + '-');
            if (newValue.selection.end >= 10) selectionIndex++;
          }
          if (newTextLength >= 14) {
            newText.write(
                newValue.text.substring(10, usedSubstringIndex = 13) + '-');
            if (newValue.selection.end >= 13) selectionIndex++;
          }
          if (newTextLength >= 15) {
            newText.write(newValue.text.substring(13, usedSubstringIndex = -1));
            if (newValue.selection.end >= 14) selectionIndex++;
          }
          break;
        }
      case 'dui':
        {
          if (newTextLength >= 9) {
            newText.write(
                newValue.text.substring(0, usedSubstringIndex = 8) + '-');
            if (newValue.selection.end >= 8) selectionIndex++;
          }
          if (newTextLength >= 10) {
            newText.write(newValue.text.substring(13, usedSubstringIndex = -1));
            if (newValue.selection.end >= 9) selectionIndex++;
          }
          break;
        }
      case 'nrc':
        {
          if (newTextLength >= 2) {
            newText.write(
                newValue.text.substring(0, usedSubstringIndex = newValue.text.length-1) + '-');
            if (newValue.selection.end >= newValue.text.length-1) selectionIndex++;
          }
          break;
        }
    }
    // Dump the rest.
    if (newTextLength >= usedSubstringIndex)
      newText.write(newValue.text.substring(usedSubstringIndex));
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
