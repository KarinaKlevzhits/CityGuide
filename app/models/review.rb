# == Schema Information
#
# Table name: reviews
#
#  id              :bigint           not null, primary key
#  comment         :text
#  rating          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#  user_id         :integer
#
class Review < ApplicationRecord
  belongs_to :organization
  belongs_to :user
end
