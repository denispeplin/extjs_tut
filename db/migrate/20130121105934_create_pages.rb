class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.references :user

      t.timestamps
    end
    add_index :pages, :user_id
  end
end
