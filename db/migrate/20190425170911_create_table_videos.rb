class CreateTableVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :table_videos do |t|
      t.string :name
      t.text :description
      t.text :url
      t.integer :video_type
      t.integer :table_id
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
