String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  } else if (value.length < 8) {
    return 'Password must be 8 characters at least';
  }
  return null;
}