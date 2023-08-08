abstract class Validators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 8) {
      return 'Password must be 8 characters at least';
    }
    return null;
  }

  static String? nameValidator(String? value, String title) {
    if (value == null || value.isEmpty) {
      return '$title is required';
    } else if (value.length < 2) {
      return '$title must be 2 characters at least';
    }
    return null;
  }
}
