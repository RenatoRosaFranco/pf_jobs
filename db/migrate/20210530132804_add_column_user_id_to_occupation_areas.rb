class AddColumnUserIdToOccupationAreas < ActiveRecord::Migration[5.2]
  def change
    add_reference :occupation_areas, :user, foreign_key: true
  end
end
