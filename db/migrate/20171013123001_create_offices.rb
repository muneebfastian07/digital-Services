class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :company_name
      t.integer :zipcode
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :accept_legal

      t.timestamps
    end
  end
end
