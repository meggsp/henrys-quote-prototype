class Quote < ActiveRecord::Base
  attr_accessible :name, :questions_attributes
  belongs_to :customer
  accepts_nested_attributes_for :customer

  def company_name
    customer.try(:company_name)
  end

  def company_name=(company_name)
    self.customer = Customer.find_by_name(company_name) if company_name.present?
  end


end
