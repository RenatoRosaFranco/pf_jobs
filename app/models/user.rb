# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean
#  cpf_or_cnpj            :string
#  deleted_at             :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  featured               :boolean
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  plan_id                :integer          default(1)
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_plan_id               (plan_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  self.table_name  = 'users'
  self.primary_key = 'id'

  acts_as_paranoid

  has_one    :profile,           dependent: :destroy
  has_one    :plan,              dependent: :destroy

  has_many   :jobs,              dependent: :destroy
  has_many   :cities,            dependent: :destroy
  has_many   :hiring_types,      dependent: :destroy
  has_many   :occupation_areas,  dependent: :destroy
  has_many   :states,            dependent: :destroy

  belongs_to :plan, dependent: :destroy

  scope      :recents,  -> { order(created_at: :desc) }
  scope      :featured, -> { where(featured: true) }

  after_create :create_profile, :create_plan

  has_many :alerts, class_name: 'JobAlert', as: :alerteable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_uniqueness_of :cpf_or_cnpj
  validates_presence_of :cpf_or_cnpj
end
