class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :phone_number1
      t.string :phone_number2
      t.string :email
      t.string :website
      t.string :registration
      t.datetime :date_start
      t.text :description
      t.boolean :active
      t.string :transparency_doc
      t.text :deposit_description
      t.string :zipcode
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
