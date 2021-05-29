# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  acronym    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class State < ApplicationRecord
  self.table_name  = 'states'
  self.primary_key = 'id'

  has_many :cities, dependent: :destroy
end
