# == Schema Information
#
# Table name: hiring_types
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
#  index_hiring_types_on_user_id  (user_id)
#
class HiringType < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'hiring_types'
  self.primary_key = 'id'

  has_many :jobs, dependent: :destroy
  belongs_to :user
end
