class Api::V1::MobileOperatorsController < ApplicationController
  def index
    @api_v1_mobile_operators = MobileOperator.all
    render json: @api_v1_mobile_operators
  end
end
