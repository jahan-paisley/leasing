module PersonHelper
  # @param [nationalno] value
  def nationalno_is_valid value
    false if value.nil? or value.length == 0
    if value.length == 10
      if %w(1111111111 0000000000 2222222222 3333333333 4444444444 5555555555 7777777777 8888888888 9999999999).include?(value)
        false
      elsif value[0..6] == '0' * 7
        false
      else
        c = value[9].to_i
        0.upto(8) { |i| n += value[i].to_i * (10-i)}
        r = n - (n / 11).to_i * 11
        return ((r == 0 && r == c) || (r == 1 && c == 1) || (r > 1 && c == 11 - r))
      end
    end
    false
  end
end
