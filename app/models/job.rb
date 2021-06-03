# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  application_path   :string
#  deleted_at         :datetime
#  description        :text
#  desirable          :text
#  expirated          :boolean
#  expiration_date    :date
#  featured           :boolean
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
class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  self.table_name  = 'jobs'
  self.primary_key = 'id'

  acts_as_paranoid

  after_create :set_expiration_date

  enum modality: %w[Presencial Remoto]
  enum how_to_applu: %w[E-mail URL]

  scope :by_title,    ->(title) { order('title LIKE ?', "%#{title}") }
  scope :by_location, ->(location) { where(location: location) }
  scope :recents,     -> { order(created_at: :desc) }
  scope :active,      -> { where(expirated: false) }

  belongs_to :hiring_type
  belongs_to :occupation_area
  belongs_to :city
  belongs_to :state
  belongs_to :user

  def set_expiration_date(date = Date.today + 12.day)
    self.expiration_date = date
    save
  end
end
