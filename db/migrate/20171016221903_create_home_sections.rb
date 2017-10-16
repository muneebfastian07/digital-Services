class CreateHomeSections < ActiveRecord::Migration[5.1]
  def change
    create_table :home_sections do |t|
    	t.string :name
    	t.string :default_name
    	t.string :title
    	t.string :subtitle
    	t.string :link_text
    	t.string :link_path

      t.timestamps
    end
  end
end
