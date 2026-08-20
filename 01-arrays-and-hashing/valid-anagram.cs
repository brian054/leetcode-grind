// Problem: Valid Anagram
// Category: Arrays and Hashing

public class Solution {
    public bool IsAnagram(string s, string t) {
        if (s.Length != t.Length) {
            return false;
        }

        Dictionary<char, int> hm = new();

        // build hm
        foreach (var letter in s) {
            if (hm.ContainsKey(letter)) {
                hm[letter] += 1;
            } else {
                hm[letter] = 1;
            }
        }

        // see if match or not
        foreach (var letter in t) {
            if(hm.ContainsKey(letter)) {
                hm[letter] -= 1;
                if (hm[letter] < 0) {
                    return false;
                } 
            } else {
                return false;
            }
        }
        return true;
    }
}