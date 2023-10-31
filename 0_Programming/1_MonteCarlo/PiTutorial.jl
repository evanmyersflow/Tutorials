using Distributions

function approximatePi(N)
    inCircle = 0
    for _ in 1:N
        x, y = rand(Uniform(-1,1)), rand(Uniform(-1,1))
        radius = sqrt(x^2 + y^2)
        if radius <= 1
            inCircle += 1
        end
    end
    return 4 * inCircle / N
end

println("Enter number of samples: " )
N = parse(Int, readline())
println("Estimated value of pi: ", approximatePi(N))
