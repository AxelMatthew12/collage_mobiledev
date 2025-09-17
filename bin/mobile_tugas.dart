
void main() {
  List<Map<String, dynamic>> riwayat = [];

  if (validasiInput(170, 65)) hitungBMI(170, 65, riwayat);
  if (validasiInput(165, 75)) hitungBMI(165, 75, riwayat);
  if (validasiInput(180, 85)) hitungBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
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

// history display function
void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("=== Riwayat Perhitungan BMI ===");
  for (var data in riwayat) {
    print("Tinggi: ${data['tinggi']} cm, "
        "Berat: ${data['berat']} kg, "
        "BMI: ${data['bmi'].toStringAsFixed(2)}, "
        "Kategori: ${data['kategori']}");
  }
}