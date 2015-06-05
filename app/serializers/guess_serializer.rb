class GuessSerializer < ActiveModel::Serializer
  attributes :titleguess, :id

  def user
    object.user
  end
end
