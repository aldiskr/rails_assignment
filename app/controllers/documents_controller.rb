class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def edit
    @document = Document.find(params[:id])
    @document_attachments = @document.document_attachments.all
  end

  def new
    @document = Document.new
    @document_attachment = @document.document_attachments.build
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
      redirect_to @document
    else
      render :edit
    end
  end

  def show
    @document = Document.find(params[:id])
    @document_attachments = @document.document_attachments.all
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      if params[:document_attachments]
        params[:document_attachments]['attachment'].each do |a|
          @document_attachment = @document.document_attachments.create!(:attachment => a, :document_id => @document.id)
        end
      end
      redirect_to documents_path
    else
      render :new
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path
  end

  private
  def document_params
    params.require(:document).permit(:name, :description, document_attachments_attributes:[:id, :document_id, :attachment])
  end
end
