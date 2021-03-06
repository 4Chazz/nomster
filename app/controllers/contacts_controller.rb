class ContactsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create]

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact=Contact.new
  end

  def create
    current_user.contacts.create(contact_params)
    
    redirect_to places_path
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)

  end

end