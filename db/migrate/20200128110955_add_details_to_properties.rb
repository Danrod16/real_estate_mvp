class AddDetailsToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :photo, :string
    add_reference :properties, :user, foreign_key: true
  end
end
