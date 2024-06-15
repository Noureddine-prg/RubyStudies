# create a map that has all the values a-z with keys of 1-26
# create function that takes in two args
# caesar_cipher(string, shift factor)
#



def caesar_cipher(statement, shift)

  map = (1..26).zip('a'..'z').to_h
  result = ""

  # locate map value of the current letter we want to shift
  statement.each_char do |char|
    # check if char exists in the map
    unless map.include?(char)
      result += char
      next
    end

    # find index of current index
    current_value = map[char]

    # this allows current value to be shifted backwards without reaching negative number
    shifted_value = (current_value - shift) % 26

    # case where shifted value hits zero
    shifted_value = 26 if shifted_value == 0

    # new character from shifted value
    shifted_char = map[shifted_value]

    result += shifted_char
  end

  return result
end
