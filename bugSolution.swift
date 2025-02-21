let optionalNumbers: [Int?] = [1, 2, nil, 4, 5]

let safeOptionalSum = optionalNumbers.reduce(0) { $0 + ($1 ?? 0) }

print(safeOptionalSum) // Output: 12

This solution uses the nil-coalescing operator (`??`) within the reduce closure.  If an element in `optionalNumbers` is `nil`, it's treated as 0, preventing the runtime crash.  This approach ensures safe and predictable results when working with optional values in `reduce`.