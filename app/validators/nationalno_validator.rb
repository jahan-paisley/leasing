class NationalnoValidator < ActiveModel::EachValidator
  include PersonHelper

  def validate_each(record, attr_name, value)
    unless PersonHelper.valid_nationalno? value
      record.errors.add(attr_name, :nationalno, options.merge(:value => value))
    end
  end
  
end

# This allows us to assign the validator in the model
module ActiveModel::Validations::HelperMethods
  def validates_nationalno(*attr_names)
    validates_with NationalnoValidator, _merge_attributes(attr_names)
  end
end