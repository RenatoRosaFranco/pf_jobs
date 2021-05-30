# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  acronym    :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_states_on_user_id  (user_id)
#
class State < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'states'
  self.primary_key = 'id'

  has_many :jobs, dependent: :destroy
  has_many :cities, dependent: :destroy
  belongs_to :user
end
