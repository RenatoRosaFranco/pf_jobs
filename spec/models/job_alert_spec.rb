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
require 'rails_helper'

RSpec.describe JobAlert, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
