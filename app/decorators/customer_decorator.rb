class CustomerDecorator < Draper::Base
  decorates :customer

  def birthdate
    h.to_jalali model.person.birthdate
  end

  def identity_issue_date
    h.to_jalali model.person.identity_issue_date
  end

  def method_missing(m, *args, &block)
    if model.person.respond_to?(m)
      model.person.send(m, *args)
    else
      super(m, *args, &block)
    end
  end

  def respond_to?(method, include_private = false)
    super || model.person.respond_to?(method, include_private)
  end

  # Accessing Helpers
  #   You can access any helper via a proxy
  #
  #   Normal Usage: helpers.number_to_currency(2)
  #   Abbreviated : h.number_to_currency(2)
  #
  #   Or, optionally enable "lazy helpers" by including this module:
  #     include Draper::LazyHelpers
  #   Then use the helpers with no proxy:
  #     number_to_currency(2)

  # Defining an Interface
  #   Control access to the wrapped subject's methods using one of the following:
  #
  #   To allow only the listed methods (whitelist):
  #     allows :method1, :method2
  #
  #   To allow everything except the listed methods (blacklist):
  #     denies :method1, :method2

  # Presentation Methods
  #   Define your own instance methods, even overriding accessors
  #   generated by ActiveRecord:
  #
  #   def created_at
  #     h.content_tag :span, attributes["created_at"].strftime("%a %m/%d/%y"),
  #                   :class => 'timestamp'
  #   end
end
