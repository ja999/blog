
class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      #t.user :user
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
