function kamenetsky(n::Float64)
    if n < 0
        return 0
    end

    if n <= 1
        return 1
    end

    x = (n * (log(n / Base.MathConstants.e) / log(10)) +
         ((log(2 * π * n) / log(10)) / 2.0))

    return floor(x) + 1
end

n = parse(Float64, readline())

result = kamenetsky(n)
println(Int(result))