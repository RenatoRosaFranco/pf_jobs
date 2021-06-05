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
require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
