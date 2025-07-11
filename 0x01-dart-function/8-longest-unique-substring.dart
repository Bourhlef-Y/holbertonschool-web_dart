String longestUniqueSubstring(String str) {
  if (str.isEmpty) return '';
  
  Map<String, int> seen = {};
  String longest = '';
  String current = '';
  int start = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    
    if (seen.containsKey(char) && seen[char]! >= start) {
      if (current.length > longest.length) {
        longest = current;
      }
      start = seen[char]! + 1;
      current = str.substring(seen[char]! + 1, i + 1);
    } else {
      current += char;
    }
    
    seen[char] = i;
  }

  return current.length > longest.length ? current : longest;
}
