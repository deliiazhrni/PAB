import 'dart:io';

import 'Kalkulator.dart';

void main() {
  var kalkulator = Kalkulator();

  while (true) {
    stdout.write('Masukkan bilangan pertama : ');
    double bil1 = double.parse(stdin.readLineSync()!);

    stdout.write('Masukkan Bilangan kedua : ');
    double bil2 = double.parse(stdin.readLineSync()!);

    print('===== Kalkulator Sederhana =====');
    print('1. Operator Tambah (+)');
    print('2. Operator Kurang (-)');
    print('3. Operator bagi (/)');
    print('4. Operator Kali (*)');

    stdout.write('ingin operator nomor berapa (1-4) : ');
    String? operator = stdin.readLineSync();

    double jawaban;
    if (operator == '1') {
      jawaban = kalkulator.penambahan(bil1, bil2);
      print('hasil dari $bil1 + $bil2 = $jawaban');
    } else if (operator == '2') {
      jawaban = kalkulator.pengurangan(bil1, bil2);
      print('Hasil dari $bil1 - $bil2 = $jawaban');
    } else if (operator == '3') {
      jawaban = kalkulator.pembagian(bil1, bil2);
      print('Hasil dari $bil1 / $bil2 = $jawaban');
    } else if (operator == '4') {
      jawaban = kalkulator.perkalian(bil1, bil2);
      print('Hasil dari $bil1 * $bil2 = $jawaban');
    } else {
      print('Mohon Pilih Operator Yang Benar!');
    }
    stdout.write('Mau Pake Kalkulator lagi? (Y/T) : ');
    String? pake = stdin.readLineSync();
    if (pake == 't' || pake == 'T') {
      print('Terima Kasih Sudah Pake Kalkulator Saya');
      break;
    }
  }
}
