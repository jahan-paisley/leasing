require 'spec_helper'

describe CustomerDecorator do
  include ApplicationHelper

  before (:each) do
    @customer = FactoryGirl.create :customer
  end

  describe 'Date Decorations' do
    it 'should convert date to persian date on fetch for single object' do
      customer = CustomerDecorator.new @customer
      customer.birthdate.should eq(to_jalali @customer.person.birthdate)
    end

    it 'should convert date to persian date on fetch for object collection' do
      customers = CustomerDecorator.decorate([@customer])
      customers.select{|e| e.birthdate}.should eq( [@customer].select{|e| to_jalali e.person.birthdate })
    end

  end

end
