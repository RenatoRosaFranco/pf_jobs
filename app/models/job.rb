# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  application_path   :string
#  description        :text
#  expirated          :boolean
#  expiration_date    :date
#  how_to_apply       :integer
#  location           :string
#  modality           :integer
#  salary             :float
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
class Job < ApplicationRecord
  self.table_name  = 'jobs'
  self.primary_key = 'id'

  scope :recents, -> { order(created_at: :desc) }
  scope :active,  -> { where(expirated: false) }

  belongs_to :hiring_type
  belongs_to :occupation_area
  belongs_to :user
end
