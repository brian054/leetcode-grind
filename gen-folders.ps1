$sections = @(
    @{
        Name     = "Arrays and Hashing"
        Problems = @(
            "Contains Duplicate",
            "Valid Anagram",
            "Two Sum",
            "Group Anagrams",
            "Top K Frequent Elements",
            "Encode and Decode Strings",
            "Product of Array Except Self",
            "Valid Sudoku",
            "Longest Consecutive Sequence"
        )
    },
    @{
        Name     = "Two Pointers"
        Problems = @(
            "Valid Palindrome",
            "Two Sum II",
            "3Sum",
            "Container With Most Water",
            "Trapping Rain Water"
        )
    },
    @{
        Name     = "Stack"
        Problems = @(
            "Valid Parentheses",
            "Min Stack",
            "Evaluate Reverse Polish Notation",
            "Generate Parentheses",
            "Daily Temperatures",
            "Car Fleet",
            "Largest Rectangle in Histogram",
            "Online Stock Span"
        )
    },
    @{
        Name     = "Binary Search"
        Problems = @(
            "Binary Search",
            "Search a 2D Matrix",
            "Koko Eating Bananas",
            "Find Minimum in Rotated Sorted Array",
            "Search in Rotated Sorted Array",
            "Time Based Key-Value Store",
            "Median of Two Sorted Arrays"
        )
    },
    @{
        Name     = "Sliding Window"
        Problems = @(
            "Best Time to Buy and Sell Stock",
            "Longest Substring Without Repeating Characters",
            "Longest Repeating Character Replacement",
            "Permutation in String",
            "Minimum Window Substring",
            "Sliding Window Maximum"
        )
    },
    @{
        Name     = "Linked List"
        Problems = @(
            "Reverse Linked List",
            "Merge Two Sorted Lists",
            "Linked List Cycle",
            "Reorder List",
            "Remove Nth Node From End of List",
            "Reverse Nodes in K-Group"
        )
    },
    @{
        Name     = "Trees"
        Problems = @(
            "Invert Binary Tree",
            "Maximum Depth of Binary Tree",
            "Diameter of Binary Tree",
            "Balanced Binary Tree",
            "Same Tree",
            "Subtree of Another Tree",
            "Lowest Common Ancestor of a Binary Search Tree",
            "Binary Tree Level Order Traversal",
            "Binary Tree Right Side View",
            "Count Good Nodes in Binary Tree",
            "Validate Binary Search Tree",
            "Kth Smallest Element in a BST",
            "Construct Binary Tree from Preorder and Inorder Traversal",
            "Binary Tree Maximum Path Sum",
            "Serialize and Deserialize Binary Tree"
        )
    },
    @{
        Name     = "Tries"
        Problems = @(
            "Implement Trie Prefix Tree",
            "Design Add And Search Words Data Structure",
            "Word Search II"
        )
    },
    @{
        Name     = "Heap / Priority Queue"
        Problems = @(
            "Kth Largest Element in a Stream",
            "Last Stone Weight",
            "K Closest Points to Origin",
            "Kth Largest Element in an Array",
            "Task Scheduler",
            "Design Twitter",
            "Find Median from Data Stream"
        )
    },
    @{
        Name     = "Backtracking"
        Problems = @(
            "Subsets",
            "Combination Sum",
            "Permutations",
            "Subsets II",
            "Combination Sum II",
            "Word Search",
            "Palindrome Partitioning",
            "Letter Combinations of a Phone Number",
            "N Queens"
        )
    },
    @{
        Name     = "Graphs"
        Problems = @(
            "Number of Islands",
            "Max Area of Island",
            "Clone Graph",
            "Walls and Gates",
            "Rotting Oranges",
            "Pacific Atlantic Water Flow",
            "Surrounded Regions",
            "Course Schedule",
            "Course Schedule II",
            "Graph Valid Tree",
            "Number of Connected Components in an Undirected Graph",
            "Redundant Connection",
            "Word Ladder"
        )
    },
    @{
        Name     = "Advanced Graphs"
        Problems = @(
            "Reconstruct Itinerary",
            "Min Cost to Connect All Points",
            "Network Delay Time",
            "Swim In Rising Water",
            "Alien Dictionary",
            "Cheapest Flights Within K Stops"
        )
    },
    @{
        Name     = "1-D DP"
        Problems = @(
            "Climbing Stairs",
            "Min Cost Climbing Stairs",
            "House Robber",
            "House Robber II",
            "Longest Palindromic Substring",
            "Palindromic Substrings",
            "Decode Ways",
            "Coin Change",
            "Maximum Product Subarray",
            "Word Break",
            "Longest Increasing Subsequence",
            "Partition Equal Subset Sum"
        )
    },
    @{
        Name     = "2-D DP"
        Problems = @(
            "Unique Paths",
            "Longest Common Subsequence",
            "Best Time to Buy and Sell Stock with Cooldown",
            "Coin Change II",
            "Target Sum",
            "Interleaving String",
            "Longest Increasing Path in a Matrix",
            "Distinct Subsequences",
            "Edit Distance",
            "Burst Balloons",
            "Regular Expression Matching"
        )
    },
    @{
        Name     = "Greedy"
        Problems = @(
            "Maximum Subarray",
            "Jump Game",
            "Jump Game II",
            "Gas Station",
            "Hand of Straights",
            "Merge Triplets to Form Target Triplet",
            "Partition Labels",
            "Valid Parenthesis String"
        )
    },
    @{
        Name     = "Intervals"
        Problems = @(
            "Insert Interval",
            "Merge Intervals",
            "Non Overlapping Intervals",
            "Meeting Rooms",
            "Meeting Rooms II",
            "Minimum Interval to Include Each Query"
        )
    },
    @{
        Name     = "Bit Manipulation"
        Problems = @(
            "Single Number",
            "Number of 1 Bits",
            "Counting Bits",
            "Reverse Bits",
            "Missing Number",
            "Sum of Two Integers",
            "Reverse Integer"
        )
    },
    @{
        Name     = "Math & Geometry"
        Problems = @(
            "Rotate Image",
            "Spiral Matrix",
            "Set Matrix Zeroes",
            "Happy Number",
            "Plus One",
            "Pow(x, n)",
            "Multiply Strings",
            "Detect Squares"
        )
    }
)

function Convert-ToSlug {
    param([string]$Name)

    $slug = $Name.ToLower()
    $slug = $slug -replace "&", "and"
    $slug = $slug -replace "/", " "
    $slug = $slug -replace "[^a-z0-9\s()-]", ""
    $slug = $slug -replace "[()]", ""
    $slug = $slug -replace "\s+", "-"
    $slug = $slug -replace "-+", "-"
    return $slug.Trim("-")
}

$sectionIndex = 1
$totalFiles = 0

foreach ($section in $sections) {
    $sectionSlug = Convert-ToSlug $section.Name
    $sectionPrefix = "{0:D2}" -f $sectionIndex
    $folderName = "$sectionPrefix-$sectionSlug"
    $folderPath = Join-Path (Get-Location) $folderName

    if (-not (Test-Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath | Out-Null
    }

    foreach ($problem in $section.Problems) {
        $problemSlug = Convert-ToSlug $problem
        $filePath = Join-Path $folderPath "$problemSlug.cs"

        if (-not (Test-Path $filePath)) {
            $content = @"
// Problem: $problem
// Category: $($section.Name)

public class Solution
{
    
}
"@
            Set-Content -Path $filePath -Value $content -Encoding UTF8
            $totalFiles++
        }
    }

    $sectionIndex++
}

Write-Host "Done. Created $totalFiles new .cs files."