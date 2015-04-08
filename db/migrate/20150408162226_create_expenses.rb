class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.belongs_to :user, index: true
      t.date :date
      t.string :description
      t.string :category
      t.float :amount
      t.string :receipt_image
      t.text :notes

      t.timestamps null: false
    end
  end
end
