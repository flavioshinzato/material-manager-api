class AdminsController < ApplicationController

  def create
    admin = Admin.new(admin_params)

    if admin.save
      headers = admin.refresh_token

      response.header['ADMIN_TOKEN'] = headers[:token]
      response.header['ADMIN_EMAIL'] = headers[:email]

      respond_with admin, location: '', scope: headers, status: 201
    else
      render json: admin.errors, status: :unprocessable_entity
    end
  end

  def sign_in
  end

  private

  def admin_params
    params.permit(:email, :password)
  end

end