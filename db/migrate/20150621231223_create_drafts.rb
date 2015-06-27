class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
		t.string :title, null: false, default: Date.new
		t.text :content, null: false, default: ''

      t.timestamps null: false
    end
  end
end
