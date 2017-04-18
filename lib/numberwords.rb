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
      "90" => 'ninety'
    }
    string = ''
    places = ['hundred', 'thousand', 'million']
    if (num < 20)
      string = numbers[num.to_s]
    else
      ones, tens, *rest = num.to_s.split('').reverse
      if (tens == "0")
        string.prepend(numbers[ones] + ' ')
      elsif (tens == "1")
        string.prepend(numbers[tens + ones] + ' ')
      else
        string.prepend(numbers[ones] + ' ')
        string.prepend(numbers[tens + "0"] + ' ')
      end
    end
    string.strip
  end
end
