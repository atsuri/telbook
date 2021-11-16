class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.references :friend, null: false #外部キー
      t.string :number #番号
      t.boolean :cellphone ,default: false#携帯か
      t.timestamps
    end
  end
end
