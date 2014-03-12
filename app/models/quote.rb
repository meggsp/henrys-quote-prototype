class Quote < ActiveRecord::Base
  belongs_to :customer
  accepts_nested_attributes_for :customer
  attr_accessible :company_name, :quote_status
  validates_presence_of :company_name

end
