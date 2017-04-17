class ContactsController < ApplicationController
  before_action :authenticate_user!

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    redirect_to places_path

  end

  def show
    @contact = Contact.new
  end


end