class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author
   has_many :photos

  def author
    'some author'
  end

  # @newP = @publication.attributes.slice('title', 'body', 'id', 'photos')
end
