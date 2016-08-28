class Api::V1::ContactsController < ApplicationController

  def index
    @api_v1_contacts = Contact.all
    render json: @api_v1_contacts
  end

end
