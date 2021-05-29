# == Schema Information
#
# Table name: profiles
#
#  id          :integer          not null, primary key
#  description :text
#  logo        :string
#  name        :string
#  phone       :string
#  slug        :string
#  website     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city_id     :integer
#  state_id    :integer
#  user_id     :integer
#
# Indexes
#
#  index_profiles_on_city_id   (city_id)
#  index_profiles_on_state_id  (state_id)
#  index_profiles_on_user_id   (user_id)
#
class Profile < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  self.table_name  = 'profiles'
  self.primary_key = 'id'

  belongs_to :state
  belongs_to :city
end
