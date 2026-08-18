// Problem: Two Sum
// Category: Arrays and Hashing

public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        Dictionary<int, int> HashMap = new Dictionary<int, int>();
        // First solution off the dome
        // Build HashMap
        // for(int i = 0; i < nums.Length; i++) {
        //     HashMap[nums[i]] = i;
        // }
        // // Check for target match
        // for(int i = 0; i < nums.Length; i++) {
        //     int potentialCorrectKey = target - nums[i];
        //     if (HashMap.ContainsKey(potentialCorrectKey) && HashMap[potentialCorrectKey] != i) {
        //         return [i, HashMap[potentialCorrectKey]];
        //     }
        // }

        // This much better
        for (int i = 0; i < nums.Length; i++) {
            int potentialKeyNeeded = target - nums[i];

            if (HashMap.ContainsKey(potentialKeyNeeded)) {
                return [i, HashMap[potentialKeyNeeded]];
            }

            HashMap[nums[i]] = i;
        }
        // We're guarenteed an answer so this should not occur.
        return [-1, -1];
    }
}
