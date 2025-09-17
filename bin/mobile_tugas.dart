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