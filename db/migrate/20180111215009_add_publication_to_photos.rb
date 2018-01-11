class AddPublicationToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :publication, foreign_key: true
  end
end
