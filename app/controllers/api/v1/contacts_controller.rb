class Api::V1::ContactsController < ApplicationController

  def index
    @api_v1_contacts = Contact.all
    render json: @api_v1_contacts
  end

  def create
    @api_v1_contact = Contact.new(contact_params)

    if @api_v1_contact.save
      render json: @api_v1_contact
    else
      render json: @api_v1_contact.errors
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :birth, :phone, :mobile_operator_id)
  end

end
