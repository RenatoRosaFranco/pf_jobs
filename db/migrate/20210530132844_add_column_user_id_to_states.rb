class AddColumnUserIdToStates < ActiveRecord::Migration[5.2]
  def change
    add_reference :states, :user, foreign_key: true
  end
end
