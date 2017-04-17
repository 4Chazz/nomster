class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contacts = Contact.new
  end

  def new
    @contact=Contact.new
  end

  def create
    Contact.create(contact_params)
    redirect_to places_path
  end

  def contact_params
    params.require(:name).permit(:email, :message)

  end

end