class ContactSerializer < ActiveModel::Serializer
  attributes :id, :phone , :birth , :name
  has_one :mobile_operator
end
