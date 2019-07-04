
module Input_checker
  def validity_checker? input
    input = input.split(" ")
    begin
      Integer(input.first)
      Float(input.last)
    rescue ArgumentError => e
      p "either first is not no. or last is not no."
      return false
    end

    if input[1..-2].join.length == 0
      p "middle does not have a string"
      return false
    elsif input[-2]!="at"
      p "it does not have \"at\" as second last index"
      return false
    else
      return true
    end
  end
end
