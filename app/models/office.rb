class Office < ApplicationRecord
  validates_presence_of :company_name, :first_name, :last_name, :email, :zipcode, :password, :accept_legal
end
