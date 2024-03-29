// The following syntax deactivates a lint for the entire file:
// ignore_for_file: avoid_print

void main() {
  /// The following syntax deactivates a lint for one line:
  // ignore: prefer_final_locals, just to show example
  var company = 'Miquido';

  /// The following line would normally show a lint warning
  /// but we disabled the lint rule for this file using `ignore_for_file`
  print(company);
}
