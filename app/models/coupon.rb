class Coupon < ApplicationRecord
  belongs_to :admin_user, optional: true
  def self.ransackable_attributes(auth_object = nil)
    ["admin_user_id", "created_at", "discount", "first_date", "id", "last_date", "name", "updated_at"]
  end
end
