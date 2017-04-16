class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index
    @contacts = Contact.all
  end


  def show
    @contacts = Contact.new
  end

  def new
  end

  def create
    @contacts = Contact.new(contact_params)
    @contacts.create(contact_params.merge(user: current_user))
    redirect_to root
  end

  private
  def contact_params
   
  end

end

 #params.require(:name).permit(:message, :email)
#@contacts = Contact.new
#(params[:contact])