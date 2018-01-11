class RemovePhotoIdFromPublications < ActiveRecord::Migration[5.1]
  def change
    remove_column :publications, :photo_id, :integer
  end
end
