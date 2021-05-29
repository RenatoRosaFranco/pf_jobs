class AddColumnKeywordsToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :keywords, :string
  end
end
