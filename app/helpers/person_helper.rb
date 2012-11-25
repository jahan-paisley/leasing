module PersonHelper
  # @param [nationalno] value
  def self.valid_nationalno? value
    #value.size.upto(10) { value = '0'+ value }
    value = '0' * (10 - value.length) + value
    return false if value.nil? or value.length == 0
    if value.length == 10
      '0'.upto('9') { |c| return false if c*10 == value }
      if value[0..6] == '0' * 7
        false
      else
        cc = value[9].to_i
        nn = 0
        0.upto(8) { |i| nn += value[i].to_i * (10-i) }
        rr = nn - (nn / 11).to_i * 11
        return ((rr == 0 && rr == cc) || (rr == 1 && cc == 1) || (rr > 1 && cc == 11 - rr))
      end
    end
    false
  end

  def self.gen_nationalno
    value = rand(123456789..987654321).to_s
    new_value = value
    nn = 0
    0.upto(8) { |i| nn += value[i].to_i * (10-i) }
    rr = nn - (nn / 11).to_i * 11
    case
      when rr == 0
        new_value << '0'
      when rr == 1
        new_value << '1'
      when rr > 1
        new_value << (11 - rr).to_s
      else
        return gen_nationalno
    end
    new_value
  end

end