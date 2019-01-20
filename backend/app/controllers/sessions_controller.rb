class SessionsController < Devise::SessionsController
  def create
    super do
      render json: { token: current_token } and return
    end
  end

  def show
    if user_signed_in?
      render json: current_user
    end
  end

  private

  def current_token
    request.env['warden-jwt_auth.token']
  end
end
