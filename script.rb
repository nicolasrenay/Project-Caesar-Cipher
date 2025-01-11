

def caesar_cipher(string, key)
alphabet = "abcdefghijklmnopqrtsuvwxyz".chars
cleaned_string = string.downcase.chars
raw_string = string.chars
result = []
  cleaned_string.each do |letter|

    if alphabet.include?(letter)
      new_index = (alphabet.index(letter) + key) % 26
      result << alphabet[new_index]

      else result << letter

    end
  end

  raw_string.each_with_index do |letter, index|
    if letter == letter.upcase 
      final_result = result[index].upcase
      puts final_result
    end
  end

end




 caesar_cipher("What a string!", 5)

# example 
#  > caesar_cipher("What a string!", 5)
#  => "Bmfy f xywnsl!"