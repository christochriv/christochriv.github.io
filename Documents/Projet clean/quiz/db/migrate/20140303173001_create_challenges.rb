class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.references :champion, index: true
      t.string :invite_key
      t.integer :score

      t.timestamps
    end
  end
end
