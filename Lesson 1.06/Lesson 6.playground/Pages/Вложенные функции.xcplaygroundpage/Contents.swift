//: # Lesson 6
//: ### Вложенные функции

let items = [0, 1, 2, 3, 4, 5, 6]


func recurseveBinarySearch(by items: [Int], target: Int) -> Int? {
    func recursiveBinarySearch(by items: [Int], target: Int, firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }
        
        let middleIndex = (firstIndex + lastIndex) / 2 // 3
        let item = items[middleIndex] // 3
        
        if item == target {
            return middleIndex
        } else if target < item {
            return recursiveBinarySearch(by: items,
                                         target: target,
                                         firstIndex: firstIndex,
                                         lastIndex: middleIndex - 1)
        } else {
            return recursiveBinarySearch(by: items,
                                         target: target,
                                         firstIndex: middleIndex + 1,
                                         lastIndex: lastIndex)
        }
        
    }
    
    return recursiveBinarySearch(by: items,
                                 target: target,
                                 firstIndex: 0,
                                 lastIndex: items.count - 1)
}

recurseveBinarySearch(by: items, target: 6)
//: [Next](@next)
