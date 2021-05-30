# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  application_path   :string
#  description        :text
#  desirable          :text
#  expirated          :boolean
#  expiration_date    :date
#  how_to_apply       :integer
#  keywords           :string
#  location           :string
#  modality           :integer
#  others             :text
#  requirements       :text
#  salary             :float
#  slug               :string
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  hiring_type_id     :integer
#  occupation_area_id :integer
#  state_id           :integer
#  user_id            :integer
#
# Indexes
#
#  index_jobs_on_city_id             (city_id)
#  index_jobs_on_hiring_type_id      (hiring_type_id)
#  index_jobs_on_occupation_area_id  (occupation_area_id)
#  index_jobs_on_state_id            (state_id)
#  index_jobs_on_user_id             (user_id)
#
FactoryBot.define do
  factory :job do
    title { "MyString" }
    description { "MyText" }
    hiring_type { nil }
    occupation_area { nil }
    salary { 1.5 }
    modality { 1 }
    location { "MyString" }
    how_to_apply { 1 }
    application_path { "MyString" }
    expiration_date { "2021-05-29" }
    user { nil }
  end
end
