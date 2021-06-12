# frozen_string_literal: true

class AddColumnDeletedAtToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :deleted_at, :datetime
  end
end
