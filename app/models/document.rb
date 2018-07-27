class Document < ApplicationRecord
  has_many :document_attachments, dependent: :destroy
  accepts_nested_attributes_for :document_attachments
end
