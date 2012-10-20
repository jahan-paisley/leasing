module ApplicationHelper
    
  def to_gregorian params
    params.each {|a, f|
      if f.is_a? Hash 
        f.each{|key, value|
          if value.is_a?(String) and /13\d{2}\/\d{1,2}\/\d{1,2}/ =~ value
            year, month, day = /(13\d{2})\/(\d{1,2})\/(\d{1,2})/.match(value).captures
            jdate = JalaliDate.new(year.to_i, month.to_i, day.to_i)
            params[a][key]= jdate.to_gregorian.to_s
          end
        }  
      end
    }
  end

end
