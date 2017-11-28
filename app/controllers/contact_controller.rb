class ContactController < ApplicationController
  def create
    contact = Contact.new(contact_params)
    if (contact.valid?)
      contact.sendEmail
      redirect_to :root, success: 'E-mail enviado com sucesso.'
    else
      redirect_to :root, error: 'Falha ao enviar e-mail'
    end
  end
  private
   def contact_params
     params.require(:contact).permit(:name, :phone, :email, :message)
   end
end
