class CreateLanguageAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :language_abilities do |t|
      t.integer :profile_id
      t.string :language
      t.integer :speech
      t.integer :writing
      t.integer :reading
      t.string :notes

      t.timestamps
    end
  end
end
