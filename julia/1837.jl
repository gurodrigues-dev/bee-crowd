function euclideanDivision(a, b)
    limit = b < 0 ? -b : b
    r = 0
    q = 0

    for r = 0:limit-1
        if (a - r) % b == 0
            q = (a - r) ÷ b
            return (q, r)
            break
        end
    end

    return (q, r)
end

function main()
    a, b = split(readline(), " ")
    a, b = parse(Int, a), parse(Int, b)
    q, r = euclideanDivision(a, b)
    println("$q $r")
end

main()