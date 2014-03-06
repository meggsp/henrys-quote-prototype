class Quote < ActiveRecord::Base
  belongs_to :customer
  validates_presence_of :customer

  def company_name
    customer.try(:company_name)
  end

  def company_name=(company_name)
    self.customer = Customer.find_by_name(company_name) if company_name.present?
  end
end
