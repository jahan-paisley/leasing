require 'spec_helper'

describe Person do
  it 'should return true on correct nationalnos' do
    Nationalno.nationalno_is_valid('1234567891').should_be true 
  end

end
