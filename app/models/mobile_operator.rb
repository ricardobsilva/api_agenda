class MobileOperator < ActiveRecord::Base
  has_many :contacts
  belongs_to :mobile_operator_type
end
