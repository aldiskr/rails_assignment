class DocumentAttachment < ApplicationRecord
  mount_uploader :attachment, ItemUploader
  belongs_to :document
end
