class Api::V1::ContactsController < ApplicationController
  before_action :set_contact, only: [:update,:destroy]
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

  def update
    if @api_v1_contact.update(contact_params)
      render json:@api_v1_contact
    else
      render json:@api_v1_contact.errors
    end
  end

  def destroy
    @api_v1_contact.destroy
    render json:{message: 'contato deletado'}
  end

  private

  def set_contact
    @api_v1_contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :birth, :phone, :mobile_operator_id)
  end

end
