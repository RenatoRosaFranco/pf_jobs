class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :phone
      t.string :name
      t.text :description
      t.string :website
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.string :logo

      t.timestamps
    end
  end
end
