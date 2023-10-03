class CompanyValidators {
  String? gmailNotAllowedValidation(String? value) {
    if (value?.contains('@gmail') ?? false) {
      return 'Extensões contendo @gmail não são válidos nesta plataforma!';
    }
    return null;
  }
}
