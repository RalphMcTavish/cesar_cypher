def cesar_cypher input_text, offset
  text = []
  input_text.downcase!
  input_text.each_byte{|char| text << char}
  #print text
  #puts
  text.map! do |n|
    if n == 32
      n = n
    else
      n += offset.to_i
      if n > 122
        n -= 26
      else
        n = n
      end
    end
  end
  #print text
  #puts
  text.map! {|n| n.chr}

  puts text.join
end

#cesar_cypher "abc def xyz", 4
puts "Enter a string to be encoded"
text = gets.chomp
puts "Enter an integer to use as your cypher (offset)"
num = gets.chomp

cesar_cypher text, num
