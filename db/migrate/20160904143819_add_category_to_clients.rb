class AddCategoryToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :category, :string
  end
end
