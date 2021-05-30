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
FactoryBot.define do
  factory :hiring_type do
    name { "MyString" }
  end
end
