import Foundation

func kamenetsky(_ n: Double) -> Int {
    if n < 0 {
        return 0
    }

    if n <= 1 {
        return 1
    }

    let x = ((n * log10(n / exp(1))) +
             (log10(2 * Double.pi * n) / 2.0))

    return Int(floor(x) + 1)
}

if let n = Double(readLine() ?? "") {
    print(kamenetsky(n))
}