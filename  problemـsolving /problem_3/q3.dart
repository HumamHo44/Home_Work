// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.

bool isPalindrome(String s) {
  String cleaned = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  return cleaned == cleaned.split('').reversed.join('');
}
