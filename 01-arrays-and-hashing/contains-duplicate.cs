// Problem: Contains Duplicate
// Category: Arrays and Hashing

public class Solution {
    public bool ContainsDuplicate(int[] nums) {
        Dictionary<int, int> HashMap = new();
        // NOTE: You could use a HashSet<int>

        foreach(var number in nums) {
            // add to HM
            if (HashMap.ContainsKey(number)) {
                return true;
            } else {
                HashMap.Add(number, 1); // key = nums[i], value = number of occurences
            }
        }
        return false; 
    }
    
    // HashSet solution
    public bool ContainsDuplicate(int[] nums) {
        HashSet<int> hs = new();
        
        foreach (var number in nums) {
            if (hs.Contains(number)) {
                return true;
            } else {
                hs.Add(number);
            }
        }
        return false;
    }
}


