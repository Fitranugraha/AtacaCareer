class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :no
      t.string :name
      t.string :id_no
      t.string :nationality
      t.string :tribe
      t.string :place_of_birth
      t.date :date_of_birth
      t.float :height
      t.float :weight
      t.string :blood
      t.string :sex
      t.string :married
      t.string :religion
      t.string :address_as_id
      t.string :current_address
      t.string :phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
