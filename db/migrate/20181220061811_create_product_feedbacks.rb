class CreateProductFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :product_feedbacks do |t|
      t.text :content
      t.references :student, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
