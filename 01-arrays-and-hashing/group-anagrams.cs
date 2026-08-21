// Problem: Group Anagrams
// Category: Arrays and Hashing

public class Solution {
    public IList<IList<string>> GroupAnagrams(string[] strs) {
        if (strs.Length == 1) {
            return new List<IList<string>> {
                new List<string> { strs[0] }
            };
        } 

        Dictionary<string, IList<string>> hm = new();
        for(int i = 0; i < strs.Length; i++) {
            string alphabeticalOrderString = new string(strs[i].OrderBy(c => c).ToArray());

            if (hm.ContainsKey(alphabeticalOrderString)) {
                // add onto the values List
                hm[alphabeticalOrderString].Add(strs[i]);
            } else {
                // create new hashmap element
                hm.Add(alphabeticalOrderString, new List<string> {strs[i]});
            }
        }

        // Build Output
        IList<IList<string>> output = hm.Values.ToList();
        return output;
    }
}
