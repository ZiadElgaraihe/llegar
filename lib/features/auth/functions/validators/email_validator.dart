String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
      .hasMatch(value)) {
    return 'Invalid email address';
  }
  return null;
}