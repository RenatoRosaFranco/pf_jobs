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
FactoryBot.define do
  factory :plan do
    name { "MyString" }
    description { "MyString" }
    price { "MyString" }
    user { nil }
  end
end
