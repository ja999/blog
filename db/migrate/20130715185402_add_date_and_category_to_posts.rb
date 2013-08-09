class AddDateAndCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :date, :timestamps
    add_column :posts, :category, :string
  end
end
