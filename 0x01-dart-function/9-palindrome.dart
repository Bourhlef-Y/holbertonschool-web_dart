bool isPalindrome(String s) {
  // Check minimum length requirement
  if (s.length < 3) return false;

  // Convert to lowercase and remove non-alphanumeric characters
  String cleanStr = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  
  // Check minimum length again after cleaning
  if (cleanStr.length < 3) return false;

  // Compare string with its reverse
  return cleanStr == cleanStr.split('').reversed.join('');
}
