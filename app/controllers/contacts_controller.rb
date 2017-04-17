class ContactsController < ApplicationController

  def index
  end

  def show
    @contacts = Contact.new
  end


end