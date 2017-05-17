class ContactsController < ApplicationController

  def index
      @contacts = Contact.all
      render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create 
    Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]

      )
    flash[:success] = "Contact succesfully updated!"
    render "create.html.erb"
 #   redirect_to "/contacts/#{contact.id}"
  end

  def show
    @contacts = Contact.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @contacts = Contact.find(params[:id]) #message hash
    render "edit.html.erb"
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(
     first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    flash[:success] = "Contact succesfully updated!"
    render "update.html.erb"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render "destroy.html.erb"
  end

end
