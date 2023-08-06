String? nameValidator(String? value, String title) {
  if (value == null || value.isEmpty) {
    return '$title is required';
  } else if (value.length < 2) {
    return '$title must be 2 characters at least';
  }
  return null;
}