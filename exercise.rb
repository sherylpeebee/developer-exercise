class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split
      result_array = []
       for word in arr
        if word[word.length - 1].match(/[\?.,-\/#!$%\^&\*;:{}=\-_`~()]/) &&
          word.length > 4 && word[0] === word[0].upcase
          result_array << "Marklar" + word[word.length - 1]
        elsif word[word.length - 1].match(/[\?.,-\/#!$%\^&\*;:{}=\-_`~()]/) &&
          word.length > 4
          result_array << "marklar" + word[word.length - 1]
        elsif word.length > 4 && word[0] === word[0].upcase
        result_array << "Marklar"
        elsif word.length > 4 then result_array << "marklar"
        else result_array << word
       end
    end
    return result_array.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a = 0
    b = 1
    f = 1
    accum = 0
    for i in 0..nth - 1
      if f%2 === 0 then accum += f
      end
      f = a+b;
      a = b;
      b = f;
    end
    return accum
  end

end
