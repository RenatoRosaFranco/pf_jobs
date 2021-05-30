class AddColumnRequirementsAndDesirableAndOthersToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :requirements, :text
    add_column :jobs, :desirable, :text
    add_column :jobs, :others, :text
  end
end
