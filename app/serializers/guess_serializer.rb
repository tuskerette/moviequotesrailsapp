class GuessSerializer < ActiveModel::Serializer
  attributes :titleguess, :id

  belongs_to :user

  # def user
  #   object.user
  # end
end
