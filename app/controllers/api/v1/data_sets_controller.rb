class Api::V1::DataSetsController < ApplicationController

  def index
    # list all of the users
    render json: "hi"
  end

  def create
    # puts(params)
    data_set = DataSet.create(data_set_params)
    # data_set = DataSet.new(params[:data_set])
    # render json: data_set
    render json: data_set.content
  end

  def show
    # info about one particular row
    data_set = DataSet.find(params[:id])
    render json: data_set.content
  end

  private

  def data_set_params
     params.require(:data_set).permit(:user_id, :content)
    # because JSON stringify, content's inner keys make it Unpermitted
  end

end
