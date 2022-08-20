class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :organization, null: false, foreign_key: true
      t.text :description
      t.string :age
      t.string :status
      t.string :gender

      t.timestamps
    end
  end
end
