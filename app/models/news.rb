class News < ApplicationRecord
    belongs_to :category
    belongs_to :city
    has_one_attached :image
      def self.ransackable_attributes(auth_object = nil)
        ["tittle", "created_at", "description", "image", "city_id", "category_id", "updated_at"]
      end

    def self.ransackable_associations(auth_object = nil)
      ["category", "city", "image_attachment", "image_blob"]
    end
    end
    
 