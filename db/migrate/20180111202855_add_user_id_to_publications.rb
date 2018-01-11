class AddUserIdToPublications < ActiveRecord::Migration[5.1]
  def change
    add_reference :publications, :user, index: true
  end
end
