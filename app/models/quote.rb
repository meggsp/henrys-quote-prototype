class Quote < ActiveRecord::Base
  belongs_to :customer

  # validates :company_name, :presence => true

end
