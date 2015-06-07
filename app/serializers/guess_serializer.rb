class GuessSerializer < ActiveModel::Serializer
  attributes :titleguess, :id, :user_id

  def user
    object.user
  end
end
