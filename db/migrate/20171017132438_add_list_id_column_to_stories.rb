class AddListIdColumnToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :quote_person, :string
    add_column :stories, :quote_text, :text
  end
end
