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
function alpha_chars(input)
    num_alpha = 0
    for char in input
        if !isletter(char)
            continue
        end

        num_alpha += 1
    end
    return num_alpha
end

################################################################################
function digit_chars(input)
    num_digits = 0
    for char in input
        if !isdigit(char)
            continue
        end

        num_digits += 1
    end
    return num_digits
end

################################################################################
function vowels(input)
    num_vowels = 0
    for char in input
        if char != 'a' || char != 'e' || char != 'i' || char != 'o' ||
            char != 'u' || char != 'A' || char != 'E' || char != 'I' ||
            char != 'O' || char != 'U'
            continue
        end

        num_vowels += 1
    end
    return num_vowels
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
    total_alpha_chars = alpha_chars(input)
    @printf("\nAlpha Characters: %4i", total_alpha_chars);
    total_digit_chars = digit_chars(input)
    @printf("\nNumeric Characters: %2i", total_digit_chars);
    total_vowels = vowels(input)
    @printf("\nVowels: %14i", total_vowels);
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

