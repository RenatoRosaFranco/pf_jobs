class CreateJobAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_alerts do |t|
      t.string :email

      t.timestamps
    end
  end
end
