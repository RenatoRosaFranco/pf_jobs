class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.float :desirable_salary
      t.text :presentation_letter
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
