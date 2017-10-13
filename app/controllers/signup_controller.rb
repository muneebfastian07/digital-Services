class SignupController < ApplicationController
  skip_before_action :verify_authenticity_token  

  def index
    render 'index', layout: false
  end

  def sign_up
    @office = Office.create(office_params)
    if @office.save
      redirect_to dashboard_path
    else
      redirect_to signup_path, notice: 'failed'
    end
  end

  private

  def office_params
    params.permit(:company_name, :zipcode, :first_name, :last_name, :email, :password, :accept_legal)
  end
end