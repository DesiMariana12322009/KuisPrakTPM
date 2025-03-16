import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/login_page.dart';

void main() {
  testWidgets('Test tampilan LoginPage', (WidgetTester tester) async {
    // Build aplikasi dan jalankan frame.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Periksa apakah field username dan password muncul.
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Periksa apakah tombol login muncul.
    expect(find.text('Login'), findsOneWidget);
  });
}
