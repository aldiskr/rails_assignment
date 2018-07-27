class CreateDocumentAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :document_attachments do |t|
      t.integer :document_id
      t.string :attachment

      t.timestamps
    end
  end
end
