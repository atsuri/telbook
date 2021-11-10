class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name, null: false #名前

      t.timestamps
    end
  end
end
