class CreateCategory < ActiveRecord::Migration[6.0]
  def change

    create_table :mycategories do |t|
      t.string :name
      t.timestamps
      t.integer :mylist_id
      t.integer :my_shopping_id
   
      # the id column is generated automatically for every table! no need to specify it here.
    end

  end
end
