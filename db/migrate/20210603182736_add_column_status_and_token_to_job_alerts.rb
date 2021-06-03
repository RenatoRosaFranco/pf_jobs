class AddColumnStatusAndTokenToJobAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :job_alerts, :status, :boolean, default: true
    add_column :job_alerts, :token, :string
  end
end
