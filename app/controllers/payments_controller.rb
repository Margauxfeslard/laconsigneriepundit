class PaymentsController < ApplicationController
  before_action :set_order, only: [:new, :create]

  def confirmation_commande
    @commande = current_user.commandes.payed.find(params[:commande_id])
  end

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @commande.amount_cents,
      description:  "Payment for item #{@commande.item_sku} for order #{@commande.id}",
      currency:     @commande.amount.currency
    )

    @commande.update(payment: charge.to_json, etat: 'payed')
    mail = CommandeMailer.with(commande: @commande).create_confirmation
    mail.deliver_now
    redirect_to user_commande_confirmation_path(current_user, @commande)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_commande_payment_path(@commande)

  end

  private

  def set_order
    @commande = current_user.commandes.pending.find(params[:commande_id])
  end
end
