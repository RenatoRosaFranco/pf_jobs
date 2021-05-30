# == Schema Information
#
# Table name: occupation_areas
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_occupation_areas_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe OccupationArea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
