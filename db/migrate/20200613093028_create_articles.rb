class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title #string is data type; title is the column name
      t.text :description
    end
  end
end
