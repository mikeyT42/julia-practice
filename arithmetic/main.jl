################################################################################
function add(x, y)
    x + y
end

################################################################################
function subtract(x, y)
    x - y
end

################################################################################
function multiply(x, y)
    x * y
end

################################################################################
function divide(x, y)
    # Integer division
    x ÷ y
end

################################################################################
function remainder_of(x, y)
    x % y
end

################################################################################
function power(x, y)
    x ^ y
end

################################################################################
run(`clear`)

println("---------------------------------------------------------------------")
println("\t\t\t\tWelcome")
println("---------------------------------------------------------------------")
println()

x = 5
y = 2

result = add(x, y)
println("result = ", result)
result = subtract(x, y)
println("result = ", result)
result = multiply(x, y)
println("result = ", result)
result = divide(x, y)
println("result = ", result)
result = remainder_of(x, y)
println("result = ", result)
result = power(x, y)
println("result = ", result)

println()
println("---------------------------------------------------------------------")
println("\t\t\t\tGoodbye")
println("---------------------------------------------------------------------")

