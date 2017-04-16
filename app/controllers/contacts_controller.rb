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
    current_user.contacts.create(contact_params)
    @contacts = Contact.new(contact_params)
    @contacts.create(contact_params.merge(user: current_user))
    redirect_to root
  end

  private
    def contact_params
      params.require(:name).permit(:message, :email)
   
    end

#end

 #
#@contacts = Contact.new
#(params[:contact])


  end