class AddColumnUserIdToHiringTypes < ActiveRecord::Migration[5.2]
  def change
    add_reference :hiring_types, :user, foreign_key: true
  end
end
