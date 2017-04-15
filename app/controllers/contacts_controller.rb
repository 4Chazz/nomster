class ContactsController < ApplicationController
  before_action :authenticate_user!

  #def new
   # @contact = Contact.new
  #end

  #def create
   @contact = Contact.new(params[:contact])
    #@place.contacts.create(contact_params.merge(user: current_user))
  #end

  #private

  #def contact_params
    params.require(:name, :email).permit(:message)
  #end


end
