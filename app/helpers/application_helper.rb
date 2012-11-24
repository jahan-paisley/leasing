module ApplicationHelper
    
  def to_gregorian params
    binding.pry
    params.each do |a, f|
      return unless f.is_a? Hash
      f.each do |key, value|
        if value.is_a?(String) and /13\d{2}\/\d{1,2}\/\d{1,2}/ =~ value
          year, month, day = /(13\d{2})\/(\d{1,2})\/(\d{1,2})/.match(value).captures
          jdate = JalaliDate.new(year.to_i, month.to_i, day.to_i)
          params[a][key]= jdate.to_gregorian.to_s
        elsif value.is_a? Hash
          to_gregorian value
        end
      end  
    end
  end
  
  def to_jalali arg
    arg.attributes.each_pair do |name, value|
      binding.pry if name.include? 'birthdate'
      if (value.is_a? Date) or (value.is_a? DateTime)
        jdate = JalaliDate.new(value)
        arg[name] = jdate.to_s
      elsif value.is_a? ActiveRecord::Base
        to_jalali value
      elsif value.is_a? ActiveSupport::TimeWithZone
        jdate = JalaliDate.new(value.to_datetime)
        arg[name] = jdate.to_s
      end
    end
    arg
  end

end
