class Luhn
  def validate(number) 
    n1 = n2 = 0 
    number.to_s.reverse.chars.each_slice(2) do |odd, even| 
     n1 += odd.to_i 
   
     double = even.to_i * 2 
     double -= 9 if double >= 10 
     n2 += double 
    end 
    (n1 + n2) % 10 == 0 ? 'valid' : 'invalid' 
   end 
end