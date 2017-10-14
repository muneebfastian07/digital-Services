class Office < ApplicationRecord
  validates_presence_of :company_name, :first_name, :last_name, :email, :zipcode, :password, :accept_legal

  def self.authenticated?(email, password)
    office = Office.find_by_email(email)
    if office && password == office.password
      office
    else
      false
    end
  end
end
