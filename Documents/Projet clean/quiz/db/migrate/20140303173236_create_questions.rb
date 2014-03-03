class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :query
      t.references :answer, index: true
      t.integer :good_answer_id
      t.text :explication
      t.text :source_url
      t.integer :points

      t.timestamps
    end
  end
end
