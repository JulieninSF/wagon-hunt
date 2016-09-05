class AddTaglineToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :tagline, :string
  end
end
