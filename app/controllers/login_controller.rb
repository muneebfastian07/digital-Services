class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token  

  def index
  end

  def office
    render 'office', layout: false
  end

  def partners
    render 'partners', layout: false
  end

  def log_in
    @office = Office.authenticated?(params[:email], params[:password])
    if @office
      session[:office_id] = @office.id
      redirect_to dashboard_path
    else
      redirect_to login_office_path
      flash[:notice] = 'Invalid email or password!'
    end
  end

  def destroy
    session.destroy
    redirect_to login_office_path
  end
end