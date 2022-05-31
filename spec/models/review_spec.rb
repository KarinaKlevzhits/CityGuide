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
require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
