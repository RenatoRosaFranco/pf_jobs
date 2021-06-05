# frozen_string_literal: true

# == Schema Information
#
# Table name: job_alerts
#
#  id              :integer          not null, primary key
#  alerteable_type :string
#  email           :string
#  modality        :integer          default("'Diário',")
#  status          :boolean
#  token           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  alerteable_id   :integer
#
class JobAlert < ApplicationRecord
  self.table_name   = 'job_alerts'
  self.primary_key  = 'id'

  validates_uniqueness_of :token
  validates_uniqueness_of :email, scope: [:alerteable_type]
  validates_presence_of   :email

  enum modality: ['Diário', 'Semanal', 'Mensal']
  belongs_to :alerteable, polymorphic: true, optional: true

  after_create :create_token

  def create_token(token = SecureRandom.urlsafe_base64)
    self.token = token
    self.save
  end
end
