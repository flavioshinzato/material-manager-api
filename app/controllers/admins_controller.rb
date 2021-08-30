class AdminsController < ApplicationController

  def sing_up
    admin = Admin.create(user_params)

    if admin.persisted?
      headers = user.refresh_token

      response.header['USER_TOKEN'] = headers[:token]
      response.header['USER_EMAIL'] = headers[:email]

      respond_with admin, location: '', scope: headers, status: 201
    else
      render_unprocessable_entity_error(user)
    end
  end

  def sign_in
  end

  private

  def admin_params
  end

  def sign_in_params
  end

end