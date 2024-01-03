# app/models/active_storage/attachment.rb

class ActiveStorage::Attachment < ApplicationRecord
    belongs_to :record, polymorphic: true
    belongs_to :blob, class_name: "ActiveStorage::Blob"
  
    def self.ransackable_attributes(auth_object = nil)
      ["blob_id", "created_at", "id", "name", "record_id", "record_type"]
    end
  end
  