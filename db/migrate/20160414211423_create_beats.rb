class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end
  end
end

