class CreateHomefeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :homefeatures do |t|
    	t.string :title
    	t.string :subtitle
    	t.string :link_text
    	t.string :link_path
    	t.attachment :testimonial_image
    	t.string :testimonila_remarks
    	t.attachment :image
    	t.string :image_text
    	t.string :testimonila_name 

      t.timestamps
    end
  end
end
