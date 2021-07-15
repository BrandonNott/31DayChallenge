
func customSortString(_ order: String, _ str: String) -> String {
    // convert original String into an array of strings
    var input: [String] = str.map({ "\($0)" })
    // placeholder for results
    var results = [String]()
    // enumerate through sort order
    for orderCharacter in order.map({ "\($0)" }) {
        // check each character in the remaining inputString
        for character in input {
            if character == orderCharacter {
                // append character to results
                results.append(character)
                // do not remove mutate input while enumerating
            }
        }
        // remove occurances from input string
        input = input.filter({ $0 != orderCharacter })
    }
    // any characters in the input string that don't match a character from the order, tack those on to the end of the result
    results.append(contentsOf: input)
    // convert array of strings back into a single string
    return results.joined()
}

print(customSortString("cba", "abcd"))

