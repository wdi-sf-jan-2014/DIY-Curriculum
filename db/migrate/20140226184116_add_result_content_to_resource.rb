class AddResultContentToResource < ActiveRecord::Migration
  def change
    add_column :contents, :res_title, :string
    add_column :contents, :res_author, :string
    add_column :contents, :res_domain, :string
    add_column :contents, :res_word_count, :integer
    add_column :contents, :res_excerpt, :text
    add_column :contents, :res_content, :text
  end
end
