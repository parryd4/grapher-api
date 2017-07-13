class Api::V1::CustomChartsController < ApplicationController

  def index
    # list all of the custom charts
    render json: "hi"
  end

  def create
    custom_chart = CustomChart.create(custom_chart_params)
    render json: custom_chart
  end

  def show
    # info about one particular row
    custom_chart = CustomChart.find(params[:id])
    render json: custom_chart
  end

  private

  def custom_chart_params
     params.require(:custom_chart).permit(:data_set_id, :x, :y, :color, :grid)
    # because JSON stringify, content's inner keys make it Unpermitted
  end

end
