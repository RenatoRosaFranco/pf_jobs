class AddColumnAlerteableIdAndAlerteableTypeToJobAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :job_alerts, :alerteable_id, :bigint
    add_column :job_alerts, :alerteable_type, :string
  end
end
