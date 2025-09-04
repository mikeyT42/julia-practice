@enum Genre fiction non_fiction science_fiction mystery biography

struct Book
    title::AbstractString
    author::AbstractString
    year::Unsigned
    genre::Genre
end

################################################################################
function genre_to_string(genre::Genre)
    if genre == fiction
        return "Fiction"
    elseif genre == non_fiction
        return "Non-fiction"
    elseif genre == science_fiction
        return "Science Fiction"
    elseif genre == mystery
        return "Mystery"
    elseif genre == biography
        return "Biography"
    end
end

################################################################################
function print_book(book::Book)
    genre = genre_to_string(book.genre)
    println("""book {
      title = $book.title
      author = $book.author
      year = $book.year
      genre = $genre
    }""")
end

################################################################################

