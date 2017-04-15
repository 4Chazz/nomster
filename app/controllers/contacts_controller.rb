class ContactsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    @user.contacts.create(contact_params.merge(user: current_user))
    redirect_to root
  end

  private

  def contact_params
    params.require(:name, :email).permit(:message)
  end


end
