
def caser_cipher(string, shift)
  ascii_letters = string.bytes.map do |ch|

    new_code = ch + shift.to_i
    if new_code > 122
      new_code = (new_code % 122) + 96
    elsif new_code.between?(90, 97)
      new_code = (new_code % 90) + 64
    end

    unless ch.ord.between?(65, 90) || ch.ord.between?(97, 122)
      ch.ord
    else
      new_code
    end
  end
  
  ascii_letters.map! { |code| code.chr}
  ascii_letters.join("")
end

puts "Enter a string"
string = gets.chomp
puts "Enter the shift factor"
num = gets.chomp
puts caser_cipher(string, num)
