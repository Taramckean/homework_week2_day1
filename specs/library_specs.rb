require("minitest/autorun")
require("minitest/rg")

require_relative("../library")


class TestLibrary < Minitest::Test
  def setup

    @books = [
      {
        title: "watership_down",
        rental_details: {
          student_name: "Tara",
          date: "04/11/08"

        }
      },
        {
          title: "great_gatsby",
          rental_details: {
            student_name: "Daisy",
            date: "12/01/26"
          }
        },

          {
            title: "harry_potter",
            rental_details: {
              student_name: "Ron",
              date: "22/03/94"
            }
          }
    ]

    @library = Library.new(@books)
  end


def test_book_name
  name = @library.find_book_by_name("watership_down")
  assert_equal(@books[0], name)
end

def test_find_rental_details
  rental_details = @library.find_rental_details("great_gatsby")
  assert_equal(@books[1][:rental_details], rental_details)
end

end
