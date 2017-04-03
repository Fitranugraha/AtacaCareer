# == Schema Information
#
# Table name: language_abilities
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  language   :string
#  notes      :string
#  profile_id :integer
#  reading    :integer
#  speech     :integer
#  updated_at :datetime         not null
#  writing    :integer
#

class LanguageAbility < ApplicationRecord
  belongs_to :profile, inverse_of: :language_abilities
end
