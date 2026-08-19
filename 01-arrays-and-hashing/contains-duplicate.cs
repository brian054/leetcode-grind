// Problem: Contains Duplicate
// Category: Arrays and Hashing

public class Solution {
    public bool ContainsDuplicate(int[] nums) {
        Dictionary<int, int> HashMap = new();

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
}
