class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def find_book_by_name(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
end

def find_rental_details(title)
  rental_details = Hash.new
    rental_details.each do | title, rental_details |
      title[:title] = rental_details[:rental_details]
    end
    rental_details
  end


# def format(hash)
#   output = Hash.new
#   hash.each do |key, value|
#     output[key] = cleanup(value)
#   end
#   output
# end

end
