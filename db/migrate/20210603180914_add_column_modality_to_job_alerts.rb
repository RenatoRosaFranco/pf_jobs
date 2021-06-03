class AddColumnModalityToJobAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :job_alerts, :modality, :integer, default: 0
  end
end
