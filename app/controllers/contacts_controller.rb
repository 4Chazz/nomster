class ContactsController < ApplicationController

  def index
    @contacts = Contacts.all
  end

  def show
    @contacts = Contacts.new
  end

  def new
    @contact=Contacts.new
  end

  def create
    Contacts.create(contact_params)
    redirect_to places_path
  end

  def contact_params
    params.require(:name).permit(:email, :message)

  end

end