class Api::V1::DataSetsController < ApplicationController

  def index
    # list all of the users
    data_sets = DataSet.all
    render json: data_sets.map { |d| {id: d.id, user_id: d.user_id, file_name: d.file_name}}
  end

  def create
    # puts(params)
    data_set = DataSet.create(data_set_params)
    # data_set = DataSet.new(params[:data_set])
    render json: data_set
    # render json: data_set.content
  end

  def show
    # info about one particular row
    data_set = DataSet.find(params[:id])
    # render json: data_set.content
    render json: data_set
  end

  private

  def data_set_params
     params.require(:data_set).permit(:user_id, :content, :file_name)
    # because JSON stringify, content's inner keys make it Unpermitted
  end

end
