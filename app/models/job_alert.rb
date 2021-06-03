# frozen_string_literal: true

# == Schema Information
#
# Table name: job_alerts
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class JobAlert < ApplicationRecord
  self.table_name   = 'job_alerts'
  self.primary?_key = 'id'

  validates_uniqueness_of :email
end
