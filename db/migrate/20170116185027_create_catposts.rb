class CreateCatposts < ActiveRecord::Migration[5.0]
  def change
    create_table :catposts do |t|
      t.string :caption

      t.timestamps
    end
  end
end
