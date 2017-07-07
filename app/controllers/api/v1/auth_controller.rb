class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user.present? && user.authenticate(params[:password])
      render json: {
        id: user.id,
        username: user.username
      }
    else
      render json: {
        error: 'Username or password incorrect'
      }, status: 404
    end
  end

  def show
    render json: {
      id: current_user.id,
      username: current_user.username
    }
  end

end
