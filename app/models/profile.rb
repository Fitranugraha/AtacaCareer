# == Schema Information
#
# Table name: profiles
#
#  address_as_id   :string
#  blood           :string
#  created_at      :datetime         not null
#  current_address :string
#  date_of_birth   :date
#  height          :float
#  id              :integer          not null, primary key
#  id_no           :string
#  married         :string
#  mobile_phone    :string
#  name            :string
#  nationality     :string
#  no              :string
#  phone           :string
#  place_of_birth  :string
#  religion        :string
#  sex             :string
#  tribe           :string
#  updated_at      :datetime         not null
#  user_id         :integer
#  weight          :float
#

class Profile < ApplicationRecord
  has_many :language_abilities, inverse_of: :profile
  has_many :formal_educations, inverse_of: :profile
  belongs_to :user
  
  accepts_nested_attributes_for :language_abilities, allow_destroy: true
  accepts_nested_attributes_for :formal_educations, allow_destroy: true
end
