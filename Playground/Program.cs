// string word = "tea";

// var ordered = word.OrderBy(c => c);

// Console.WriteLine(string.Join("", ordered));

Dictionary<string, List<string>> hm = new();

hm["aet"] = new List<string> { "eat", "tea", "ate" };
hm["ant"] = new List<string> { "tan", "nat" };
hm["abt"] = new List<string> { "bat" };

List<List<string>> output = hm.Values.ToList().ToString();
Console.WriteLine(string.Join(", ", output));

foreach (var group in hm.Values)
{
    Console.WriteLine(string.Join(", ", group));
}