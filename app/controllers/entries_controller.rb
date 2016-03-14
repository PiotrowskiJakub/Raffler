class EntriesController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token

  def index
    render json: Entry.all
  end

  def show
    render json: Entry.find(params[:id])
  end

  def create
    render json: Entry.create(entry_params)
  end

  private

  def entry_params
    params.require(:entry).permit(:name)
  end
end
