# == Schema Information
#
# Table name: job_applications
#
#  id                  :integer          not null, primary key
#  desirable_salary    :float
#  email               :string
#  name                :string
#  presentation_letter :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  job_id              :integer
#
# Indexes
#
#  index_job_applications_on_job_id  (job_id)
#
FactoryBot.define do
  factory :job_application do
    name { "MyString" }
    email { "MyString" }
    desirable_salary { 1.5 }
    presentation_letter { "MyText" }
    job { nil }
  end
end
