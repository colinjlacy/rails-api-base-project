class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
		t.string :title, null: false, default: Date.new.to_s
		t.boolean :private, null: false, default: false
		t.text :description
      t.timestamps null: false
    end
  end
end
