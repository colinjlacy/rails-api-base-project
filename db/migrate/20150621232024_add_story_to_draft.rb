class AddStoryToDraft < ActiveRecord::Migration
  def change
	  add_reference :drafts, :story, index: true
  end
end
