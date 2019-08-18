class AddANameFieldToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :recipe_name, :string
  end
end
