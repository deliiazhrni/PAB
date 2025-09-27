import 'dart:io';

import 'Kalkulator.dart';

void main(){
  var kalkulator = Kalkulator();

  while(true){
    stdout.write('Masukkan bilangan pertama : ');
    double bil1 = double.parse(stdin.readLineSync()!);

    stdout.write('ingin operator apa? (+ , - , / , * ) : ');
    String? operator = stdin.readLineSync();

    stdout.write('Masukkan Bilangan kedua : ');
    double bil2 = double.parse(stdin.readLineSync()!);

    double jawaban;
    if(operator == '+'){
      jawaban = kalkulator.penambahan(bil1, bil2);
      print('hasil dari $bil1 $operator $bil2 = $jawaban');
    }else if(operator == '-'){
      jawaban = kalkulator.pengurangan(bil1, bil2);
      print('Hasil dari $bil1 $operator $bil2 = $jawaban');
    }else if(operator == '/'){
      jawaban = kalkulator.pembagian(bil1, bil2);
      print('Hasil dari $bil1 $operator $bil2 = $jawaban');
    }else if(operator == '*'){
      jawaban = kalkulator.perkalian(bil1, bil2);
      print('Hasil dari $bil1 $operator $bil2 = $jawaban');
    }else{
      print('Mohon Pilih Operator Yang Benar!');
    }
    stdout.write('Mau Pake Kalkulator lagi? (Y/T) : ');
    String? pake = stdin.readLineSync();
    if(pake == 't' || pake == 'T'){
      print('Terima Kasih Sudah Pake Kalkulator Saya');
      break;
    }

    }

}