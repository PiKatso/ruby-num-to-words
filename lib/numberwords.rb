class Numberwords
  def translate(num)
    numbers = {
      "0" => '',
      "1" => 'one',
      "2" => 'two',
      "3" => 'three',
      "4" => 'four',
      "5" => 'five',
      "6" => 'six',
      "7" => 'seven',
      "8" => 'eight',
      "9" => 'nine',
      "10" => 'ten',
      "11" => 'eleven',
      "12" => 'twelve',
      "13" => 'thirteen',
      "14" => 'fourteen',
      "15" => 'fifteen',
      "16" => 'sixteen',
      "17" => 'seventeen',
      "18" => 'eighteen',
      "19" => 'nineteen',
      "20" => 'twenty',
      "30" => 'thirty',
      "40" => 'forty',
      "50" => 'fifty',
      "60" => 'sixty',
      "70" => 'seventy',
      "80" => 'eighty',
      "90" => 'ninety',
      "100" => 'hundred',
      "1000" => 'thousand',
      "1000000" => 'million'
    }
    places = ['hundred', 'thousand', 'million', 'billion', 'trillion']
    string = ''

    #get number in chunks
    #for each chunk
    num.to_s.reverse.scan(/.{1,3}/).each_with_index() do |chunk, idx|
      new_chunk = ''
      ones, tens, hundreds = chunk.split('')
      if (chunk < "20")
        new_chunk = numbers[num.to_s]
      else
        if (tens == "0")
          new_chunk.prepend(numbers[ones] + ' ')
        elsif (tens == "1")
          new_chunk.prepend(numbers[tens + ones] + ' ')
        else
          new_chunk.prepend(numbers[ones] + ' ')
          if tens != 0 && tens != nil
            new_chunk.prepend(numbers[tens + "0"] + ' ')
          end
          if hundreds != 0 && hundreds != nil
            new_chunk.prepend(numbers[hundreds] + ' hundred ')
          end
        end
      end
      if idx > 0
        new_chunk << places[idx] + ' '
      end
      string.prepend(new_chunk)
    end
    string.strip
  end
end
