class CommandeMailerPreview < ActionMailer::Preview
  def create_confirmation
    commande = params[:commande]

    mail(
      subject:  "Confirmation de votre commande !"
    )
  end
end
