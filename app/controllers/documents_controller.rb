class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    @document.patient = current_user.patient(current_user.profile_id)

    if @document.save
      redirect_to current_user, notice: "The document #{@document.name} has been uploaded."
    else
      render "new"
    end

  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to current_user, notice:  "The document #{@document.name} has been deleted."
  end

  private
  def document_params
    params.require(:document).permit(:name, :attachment)
  end

end
