
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_hallo/main.dart';

void main() {
  testWidgets('Teks latihan Flutter tampil', (tester) async {
    await tester.pumpWidget(const MyWidget());

   
    final richTextFinder = find.byType(RichText);

    expect(richTextFinder, findsOneWidget);

    
    final richText = tester.widget<RichText>(richTextFinder);
    final isiTeks = richText.text.toPlainText();


    expect(isiTeks, contains('Hallo world!'));
    expect(isiTeks, contains('Saya Rizki Riana Putra'));
    expect(isiTeks, contains('Saya sedang belajar'));
    expect(isiTeks, contains('Text styling Flutter'));
    expect(isiTeks, contains('Teks yang mudah dibaca'));
    expect(isiTeks, contains('Semangat belajarnya!'));
  });
}
