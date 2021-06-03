# == Schema Information
#
# Table name: job_alerts
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :job_alert do
    email { "MyString" }
  end
end
