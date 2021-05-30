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
FactoryBot.define do
  factory :occupation_area do
    name { "MyString" }
    slug { "MyString" }
  end
end
