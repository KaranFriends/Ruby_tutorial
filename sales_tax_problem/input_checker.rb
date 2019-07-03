
module Input_checker
  def validity_checker? input
    input = input.split(" ")
    if(input.first.to_i <= 0 || input.last.to_f <= 0)
      p "either first is not no. or last is not no."
      return false
    elsif input[1..-2].join.length == 0
      p "middle does not have a string"
      return false
    else
      return true
    end
  end
end
