import 'package:mobile_tugas/mobile_tugas.dart' as mobile_tugas;

void main(List<String> arguments) {
  print('Hello world: ${mobile_tugas.calculate()}!');
}

//input validation function
bool validasiInput(double tinggiCm, double beratKg) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Error: Tinggi dan berat harus lebih besar dari 0.");
    return false;
  }
  return true;
}

// BMI calculation function
String hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  // Simpan ke riwayat
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori,
  });

  return kategori;
}