class RemoveAttachmentFromDocument < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :attachment
  end
end
