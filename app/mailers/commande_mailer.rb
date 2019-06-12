class CommandeMailer < ApplicationMailer
  def create_confirmation
    @commande = params[:commande]

    mail(
      to:       @commande.user.email,
      subject:  "Confirmation de ta commande !"
    )
  end
end
