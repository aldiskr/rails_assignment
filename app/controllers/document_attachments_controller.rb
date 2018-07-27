class DocumentAttachmentsController < ApplicationController
  def destroy
    @document_attachment = DocumentAttachment.find(params[:id])
    @document = @document_attachment.document
    @document_attachment.destroy
    redirect_to edit_document_path(@document)
  end
end
