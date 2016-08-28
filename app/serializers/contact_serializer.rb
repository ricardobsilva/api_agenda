class ContactSerializer < ActiveModel::Serializer
  attributes :id, :phone , :birth
  has_one :mobile_operator
end
