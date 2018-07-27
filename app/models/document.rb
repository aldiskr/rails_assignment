class Document < ApplicationRecord
  validates_presence_of :title, message: 'Nosaukums nevar būt tukšs'
  has_many_attached :files
end
