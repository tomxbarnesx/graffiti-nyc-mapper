class Piece < ApplicationRecord
    belongs_to :user
    has_one_attached :photo

    def photo_url
        if self.photo.attachment
          self.photo.attachment.service_url
        end
    end
end
