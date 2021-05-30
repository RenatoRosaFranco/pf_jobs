# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  self.table_name  = 'users'
  self.primary_key = 'id'

  has_one  :profile, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :cities, dependent: :destroy
  has_many :hiring_types, dependent: :destroy
  has_many :occupation_areas, dependent: :destroy
  has_many :states, dependent: :destroy

  scope :recents, -> { order(created_at: :desc) }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
