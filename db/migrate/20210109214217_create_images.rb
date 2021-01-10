class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :description
      t.boolean :public, default: false, null: false 
      t.text :metadata, default: '{}', null: false
      t.timestamps null: false
    end
  end
end
