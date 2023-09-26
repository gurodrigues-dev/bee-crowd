import Foundation

func calculateTimeDifference(h1: Int, m1: Int, h2: Int, m2: Int) -> (Int, Int) {
    var hours = h2 - h1
    var mins = m2 - m1
    
    if mins < 0 {
        hours -= 1
        mins = 60 + mins
    }
    
    if hours < 0 {
        hours += 24
    }
    
    if hours == 0 && mins == 0 {
        hours = 24
    }
    
    return (hours, mins)
}

if let input = readLine() {
    let nums = input.split(separator: " ").compactMap { Int($0) }
    
    if nums.count == 4 {
        let (h1, m1, h2, m2) = (nums[0], nums[1], nums[2], nums[3])
        let (hours, mins) = calculateTimeDifference(h1: h1, m1: m1, h2: h2, m2: m2)
        print("O JOGO DUROU \(hours) HORA(S) E \(mins) MINUTO(S)")
    } else {
        print("Invalid input")
    }
}