class Lead < ApplicationRecord
    has_one_attached :attachment
    def attachment_blob_id
#        self.attachment.blob_id
        self.attachment.blob_id
    end
end

#    if self.attachment.blob_id
#        def attachment_blob_id
#            self.attachment.blob_id
#        end
#    else
#        def attachment_blob_id
#            return "-"
#        end
#    end

#    scope :attachment_blob_id, -> { where(self.attachment.blob_id) }
#
#    def attachment_blob_id?
#        self.attachment.blob_id
#    end