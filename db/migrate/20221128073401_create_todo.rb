class CreateTodo < ActiveRecord::Migration[6.0]
  def change

    create_table :mylists do |t|
      t.string :name
      t.timestamps
   
      # the id column is generated automatically for every table! no need to specify it here.
    end
  end
end
