class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_at, :datetime  ## created_at is magic by convention
    add_column :articles, :updated_at, :datetime  ## as is updated_at
  end
end
