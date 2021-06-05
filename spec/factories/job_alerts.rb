# == Schema Information
#
# Table name: job_alerts
#
#  id              :integer          not null, primary key
#  alerteable_type :string
#  email           :string
#  modality        :integer          default("Diário")
#  status          :boolean
#  token           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  alerteable_id   :integer
#
FactoryBot.define do
  factory :job_alert do
    email { "MyString" }
  end
end
