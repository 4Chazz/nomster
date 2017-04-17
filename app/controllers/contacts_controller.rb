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

end