class AddColumnExpiratedToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :expirated, :boolean
  end
end
