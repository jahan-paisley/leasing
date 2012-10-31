module ApplicationHelper
    
  def to_gregorian params
    params.each do |a, f|
      return if not f.is_a? Hash 
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
      if value.is_a? Date
        jdate = JalaliDate.new(value)
        arg[name] = jdate.to_s
      elsif value.is_a? ActiveRecord::Base
        to_jalali value
      end
    end
    arg
  end

end
