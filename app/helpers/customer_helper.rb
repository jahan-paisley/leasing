module CustomerHelper
  def address_categories_options
    Address::CATEGORIES.map {|o| I18n.t (o)}.zip(Address::CATEGORIES)
  end

  def address_levels_options
    Address::LEVELS.map {|o| I18n.t (o)}.zip(Address::LEVELS)
  end

  def person_genders_options
    Person::GENDERS.map {|o| I18n.t (o)}.zip(Person::GENDERS)
  end

  def person_marital_statuses_options
    Person::MARITAL_STATUSES.map {|o| I18n.t (o)}.zip(Person::MARITAL_STATUSES)
  end


end