String? typeAHeadValidator(
  String? value,
  List<String> suggestionList,
) {
  if (value == null || value.isEmpty) {
    return 'This field is required';
  } else if (!suggestionList.contains(value)) {
    return 'Invalid value';
  }
  return null;
}
