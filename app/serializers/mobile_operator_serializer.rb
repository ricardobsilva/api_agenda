class MobileOperatorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :mobile_operator_type
end
