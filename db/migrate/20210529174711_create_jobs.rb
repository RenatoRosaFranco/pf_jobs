class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :hiring_type, foreign_key: true
      t.references :occupation_area, foreign_key: true
      t.float :salary
      t.integer :modality
      t.string :location
      t.integer :how_to_apply
      t.string :application_path
      t.date :expiration_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
