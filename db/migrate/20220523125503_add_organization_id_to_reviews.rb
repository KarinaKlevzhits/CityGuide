class AddOrganizationIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :organization_id, :integer
  end
end
