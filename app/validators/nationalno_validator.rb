class NationalnoValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value)
    unless nationalno_is_valid value
      record.errors.add(attr_name, :nationalno, options.merge(:value => value))
    end
  end

  # @param [nationalno] value
  def nationalno_is_valid value
    return false if value.length == 0
    if value.length == 10
      if %w(1111111111 0000000000 2222222222 3333333333 4444444444 5555555555 7777777777 8888888888 9999999999).include?(value)
        false
      elsif value[0..6] == '0' * 7
        false
      else
        c = value[9].to_i
        n = value[0].to_i * 10 + value[1].to_i * 9 + value[2].to_i * 8 + value[3].to_i * 7 + value[4].to_i * 6 + value[5].to_i * 5 + value[6].to_i * 4 + value[7].to_i * 3 + value[8].to_i * 2
        r = n - (n / 11).to_i * 11
        return ((r == 0 && r == c) || (r == 1 && c == 1) || (r > 1 && c == 11 - r))
      end
    end
    false
  end
end

# This allows us to assign the validator in the model
module ActiveModel::Validations::HelperMethods
  def validates_nationalno(*attr_names)
    validates_with NationalnoValidator, _merge_attributes(attr_names)
  end
end