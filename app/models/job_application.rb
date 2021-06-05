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
class JobApplication < ApplicationRecord
  self.table_name  = 'job_applications0'
  self.primary_key = 'id'

  validates_uniqueness_of :email, scope: [:job_id]
  belongs_to :job
end
