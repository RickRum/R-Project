class AddUserNameToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :userName, :string
  end
end
