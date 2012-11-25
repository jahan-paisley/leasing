require 'spec_helper'

describe Person do
  it 'should return true on correct nationalnos' do
    PersonHelper.valid_nationalno?('1234567891').should be_true
    PersonHelper.valid_nationalno?('3252967685').should be_true
  end

  it 'should return false on wrong nationalnos' do
    PersonHelper.valid_nationalno?('1234567890').should be_false
    PersonHelper.valid_nationalno?('1111111111').should be_false
    PersonHelper.valid_nationalno?('0000000012').should be_false
  end

  it 'should generate valid nationalnos upon genearation' do
    5.times { PersonHelper.valid_nationalno?(PersonHelper.gen_nationalno).should be_true }
  end

end
