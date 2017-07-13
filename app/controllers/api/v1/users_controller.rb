class Api::V1::UsersController < ApplicationController

  def index
    # list all of the users
    render json: "hi"
  end

  def create
    # puts(params)
    data_set = DataSet.create(data_set_params)
    # data_set = DataSet.new(params[:data_set])
    render json: data_set
    # render json: data_set.content
  end

  private

  def data_set_params
     params.require(:data_set).permit(:user_id, :content, :file_name)
    # because JSON stringify, content's inner keys make it Unpermitted
  end

end
