# == Schema Information
#
# Table name: profiles
#
#  id          :integer          not null, primary key
#  description :text
#  logo        :string
#  name        :string
#  phone       :string
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
require 'rails_helper'

RSpec.describe Profile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
