class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :username
  belongs_to :user_id
  def username
    object.user.name
  end
end
