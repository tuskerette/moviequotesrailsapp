class MoviequoteSerializer < ActiveModel::Serializer
  attributes :id, :quote, :title

   has_many :guesses
end
