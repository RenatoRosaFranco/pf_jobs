# frozen_string_literal: true

class AddColumnPlanIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :plan, foreign_key: true, default: 1
  end
end
