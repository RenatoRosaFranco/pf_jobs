# == Schema Information
#
# Table name: occupation_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_occupation_areas_on_user_id  (user_id)
#
class OccupationArea < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'occupation_areas'
  self.primary_key = 'id'

  has_many :jobs, dependent: :destroy
  belongs_to :user
end
