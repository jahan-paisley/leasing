module CustomerHelper
  def address_categories_options
    Address::CATEGORIES.map { |o| I18n.t (o) }.zip(Address::CATEGORIES)
  end

  def address_levels_options
    Address::LEVELS.map { |o| I18n.t (o) }.zip(Address::LEVELS)
  end

  def person_genders_options
    Person::GENDERS.map { |o| I18n.t (o) }.zip(Person::GENDERS)
  end

  def person_marital_options
    Person::MARITAL_STATUSES.map { |o| I18n.t (o) }.zip(Person::MARITAL_STATUSES)
  end

  def customer_legal_types_options
    Customer::LEGAL_TYPES.map { |o| I18n.t (o) }.zip(Customer::LEGAL_TYPES)
  end

  def person_educations_options
    Person::EDUCATIONS.map { |o| I18n.t (o) }.zip(Person::EDUCATIONS)
  end

end