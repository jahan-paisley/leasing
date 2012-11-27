module ApplicationHelper

  def to_gregorian_filter
    to_gregorian params
  end

  # @param [Hash, String] arg
  def to_gregorian arg
    return nil if arg.nil?
    return simple_to_gregorian arg if is_jalali_date? arg
    if arg.is_a? Hash
      arg.each do |k, v|
        if is_jalali_date? v
          arg[k] = simple_to_gregorian v
        elsif v.is_a? Hash
          to_gregorian v
        end
      end
    end
  end


# @param [Hash, Date, DateTime, ActiveSupport::TimeWithZone] arg
  def to_jalali arg
    return nil if arg.nil?
    return simple_to_jalali arg if is_gregorian_date? arg
    if arg.respond_to? :attributes
      arg.attributes.each_pair do |name, value|
        arg[name]= simple_to_jalali value if is_gregorian_date? value
      end
    else
      raise 'argument type is not correct'
    end
    arg
  end

  private
  def simple_to_gregorian value
    if is_jalali_date? value
      year, month, day = /(13\d{2})\/(\d{1,2})\/(\d{1,2})/.match(value).captures
      jdate = JalaliDate.new(year.to_i, month.to_i, day.to_i)
      jdate.to_gregorian.to_s
    end
  end

  def is_jalali_date? value
    value.is_a?(String) and /13\d{2}\/\d{1,2}\/\d{1,2}/ =~ value
  end

  def is_gregorian_date? arg
    arg.is_a? Date or
        arg.is_a? DateTime or
        arg.is_a? ActiveSupport::TimeWithZone
  end

  #@param [Date, DateTime, ActiveSupport::TimeWithZone] arg
  def simple_to_jalali arg
    case
      when (arg.is_a? Date or arg.is_a? DateTime)
        JalaliDate.new(arg).to_s
      when (arg.is_a? ActiveSupport::TimeWithZone)
        JalaliDate.new(arg.to_datetime).to_s
      else
        raise 'argument type is not correct'
    end
  end

end
