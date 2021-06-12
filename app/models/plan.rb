# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  deleted_at  :datetime
#  description :string
#  name        :string
#  price       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_plans_on_user_id  (user_id)
#
class Plan < ApplicationRecord
  self.table_name  = 'plans'
  self.primary_key = 'id'

  acts_as_paranoid

  validates :name,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 45 }

  validates :price,
            presence: true,
            allow_blank: false

  belongs_to :user
end
