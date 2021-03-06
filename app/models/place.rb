# == Schema Information
#
# Table name: places
#
#  id              :bigint           not null, primary key
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#
# Indexes
#
#  index_places_on_organization_id  (organization_id)
#
class Place < ApplicationRecord
  belongs_to :organization, optional: true
  has_and_belongs_to_many :routes
  validates :name, length: { minimum: 5, maximum: 50 }, allow_blank: true
  validates :latitude, inclusion: { in: 0.0..100.0 }
  validates :longitude, inclusion: { in: 0.0..100.0 }
end
