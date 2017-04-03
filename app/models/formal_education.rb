# == Schema Information
#
# Table name: formal_educations
#
#  certification :string
#  created_at    :datetime         not null
#  department    :string
#  end_date      :date
#  faculty       :string
#  id            :integer          not null, primary key
#  institution   :string
#  level         :string
#  profile_id    :integer
#  start_date    :date
#  updated_at    :datetime         not null
#

class FormalEducation < ApplicationRecord
    belongs_to :profile, inverse_of: :formal_educations
end
