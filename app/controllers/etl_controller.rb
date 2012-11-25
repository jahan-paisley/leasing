# encoding : utf-8
class EtlController < ApplicationController

  before_filter :authenticate_user!

  def post_import
    uploaded_io = params[:excel_file]
    path = Rails.root.join('public', 'uploads', uploaded_io.original_filename)
    File.open(path, 'wb') do |file|
      file.write(uploaded_io.read)
    end
    excel = Excelx.new(path.to_s)
    counter = 0
    2.upto(10) do |i|
      r = excel.row(i)
      kase = Kase.new
      kase.build
      kase.contract.idno = get r[1]
      kase.idno = get r[2]
      #kase.contract.property.idno = get r[3]
      kase.customer.person.firstname = get r[5]
      kase.receipt_date= get r[6], :date
      kase.contract.property.category = get r[7]

      kase.contract.property.idno = get r[8]
      #get r[8] is province
      if get r[10]
        kase.customer.person.addresses[0].city = City.find_or_create_by_name(get r[10])
      end
      kase.customer.person.addresses[0].description = get r[11]

      kase.customer.person.addresses[0].phones = get r[12], :phones

      kase.contract.guarantors[0].person.firstname = get r[13]
      kase.contract.guarantors[0].person.addresses[0].description = get r[14]

      kase.contract.guarantors[0].person.addresses[0].phones = get r[15], :phones
      if kase.save!
        counter += 1
      else
        logger.error? get r[0] + " insertion failed"
      end
    end
    msg = "#{counter} #{t 'success_message'}"
    redirect_to :etl_import, :notice => msg
  end

  def get_import
    render :action => "import"
  end

  def get_export
    render :action => :export
  end

  def post_export
    render :action => :export
  end

  private
  # @param [Object] arg
  # @param [Symbol] option
  def get (arg, option = nil)
    if arg.nil?
      nil
    elsif option == :phones
      /^(0[1-8]\d{9}[-,])*0[1-8]\d{9}$/i =~ "0#{arg.to_i}" ? "0#{arg.to_i}" : nil
    elsif option == :date and /13\d{2}\d{2}\d{2}/ =~ arg.to_i.to_s
      arg = arg.to_i.to_s
      JalaliDate.new(arg[0..3].to_i, arg[4..5].to_i, arg[6..7].to_i).to_gregorian
    elsif arg.is_a? Numeric
      arg.to_i.to_s
    elsif arg.is_a? String
      arg.strip != '' ? arg.strip : nil
    else
      arg.to_s
    end
  end
end
