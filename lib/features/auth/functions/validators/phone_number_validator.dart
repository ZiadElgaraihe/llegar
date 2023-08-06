String? phoneNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  } else if (!RegExp(r'^\+20(10|11|12|15)[0-9]{8}$').hasMatch('+20$value')) {
    return 'Invalid phone number';
  }
  return null;
}
