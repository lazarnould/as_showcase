class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Nous avons bien reçu votre demande d'informations, nous vous répondrons dans les plus brefs délais"
      redirect_to contacts_new_path
    else
      flash[:danger] = "Une erreur est survenue, réessayez."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :descritpion)
  end
end
