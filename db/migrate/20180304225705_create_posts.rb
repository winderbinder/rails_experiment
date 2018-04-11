class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :trim


      t.timestamps
    end
  end
end
