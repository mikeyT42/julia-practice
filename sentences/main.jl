@enum LoopControl again stop

################################################################################
function keystrokes(input)
end

################################################################################
function input_loop()
    println(
        "\n\nPlease input a sentence. If you want to exit, just hit enter.\n")
    input = readline()
    if length(input) == 0
        return stop
    end

    keys = keystrokes(input)
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

