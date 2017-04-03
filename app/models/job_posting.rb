# == Schema Information
#
# Table name: job_postings
#
#  code         :string
#  created_at   :datetime         not null
#  description  :string
#  expired_date :date
#  id           :integer          not null, primary key
#  position     :string
#  post_date    :date
#  requirement  :text
#  updated_at   :datetime         not null
#

class JobPosting < ApplicationRecord
end
