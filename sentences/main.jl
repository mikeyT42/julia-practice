using Printf

@enum LoopControl again stop

################################################################################
function keystrokes(input)
    keystrokes = 0
    for char in input
        keystrokes += 1
    end
    return keystrokes
end

################################################################################
function input_loop()
    println(
        "\n\nPlease input a sentence. If you want to exit, just hit enter.\n")
    input = readline()
    if length(input) == 0
        return stop
    end

    total_keystrokes = keystrokes(input)
    @printf("\nKeystrokes: %10i", total_keystrokes);
end

################################################################################
run(`clear`)

println("---------------------------------------------------------------------")
println("\tWelcome to the Sentence Data Aggregator")
println("---------------------------------------------------------------------")

loop_control = again
while loop_control != stop
    global loop_control = input_loop()
end

println()
println("---------------------------------------------------------------------")
println("\t\t\t\tGoodbye")
println("---------------------------------------------------------------------")

