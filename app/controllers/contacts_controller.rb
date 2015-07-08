class ContactsController < ApplicationController
  def create
    @contact = Contact.new
    render 'create'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render 'confirm'
    else
      render 'create'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    UserMailer.postmail(@contact).deliver

    render 'thanks'
  end

  private

    def contact_params
      #params.require(:contact).permit(:name, :email, :content)
      params.fetch(:contact, {}).permit(:name, :email, :content)
    end
end
