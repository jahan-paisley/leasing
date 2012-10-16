module ApplicationHelper
    
  def to_gregorian params
    debugger
    params.each {|a, f|
      if f.is_a? Hash 
        f.each{|key, value|
          if /(13\d{2})\/\d{1,2}\/\d{1,2}/.match(value) #item ~= '[19-20]\d{2}/\d{1,2}/\d{1,2}'
            debugger if key.include?('date')
            year, month, day = /(13\d{2})\/(\d{1,2})\/(\d{1,2})/.match(value).captures
            jdate = JalaliDate.new(year.to_i,month.to_i,day.to_i)
            params[a][key]= jdate.to_gregorian.to_s
            debugger if value.include?('date')
          end
        }  
      end
    }
  end

end
