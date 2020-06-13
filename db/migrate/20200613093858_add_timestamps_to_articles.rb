class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    #add_column is a method to add a column on an existing table
    #:articles = table name
    #:created_at = column name
    #:datetime = data type
  end
end
