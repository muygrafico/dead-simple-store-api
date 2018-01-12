class AddPriceToPublications < ActiveRecord::Migration[5.1]
  def change
    add_column :publications, :price, :integer
  end
end
