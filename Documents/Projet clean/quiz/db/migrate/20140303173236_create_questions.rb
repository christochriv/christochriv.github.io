class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.references :choices, index: true
      t.text :explication
      t.text :source_url
      t.integer :difficulty

      t.timestamps
    end
  end
end
