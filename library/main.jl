@enum Genre fiction non_fiction science_fiction mystery biography

struct Book
    title::String
    author::String
    year::Unsigned
    genre::Genre
end

################################################################################
genre_to_string(::typeof(fiction)) = "Fiction"
genre_to_string(::typeof(non_fiction)) = "Non-fiction"
genre_to_string(::typeof(science_fiction)) = "Science Fiction"
genre_to_string(::typeof(mystery)) = "Mystery"
genre_to_string(::typeof(biography)) = "Biography"

################################################################################
function print_book(book::Book)
    println("""book {
      title = $(book.title)
      author = $(book.author)
      year = $(book.year)
      genre = $(genre_to_string(book.genre))
    }\n""")
end

################################################################################
run(`clear`)

println("---------------------------------------------------------------------")
println("\t\t\t\tWelcome")
println("---------------------------------------------------------------------")
println()

library = [
    Book("The Great Gatsby", "F. Scott Fitzgerald", 1925, fiction),
    Book("Harry Potter and the Sorcer's Stone", "J. K. Rowling", 1997, fiction),
    Book("The War of the Worlds", "H. G. Wells", 1898, science_fiction),
    Book("Sherlock Holmes", "Arthur Conan Doyle", 1892, mystery),
    Book("Steve Jobs", "Arthur Isaacson", 2011, non_fiction),
    Book("Philosophiae Naturalis Principia Mathematica", "Sir Isaac Newton",
        1687, non_fiction),
]

num_books = length(library)
println("Our library has $num_books book(s).\n")

print_book(library[1])
print_book(library[2])
print_book(library[3])
print_book(library[4])
print_book(library[5])
print_book(library[6])

println()
println("---------------------------------------------------------------------")
println("\t\t\t\tGoodbye")
println("---------------------------------------------------------------------")

