class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name, limit: 140, null: false
      t.timestamps
    end
  end
end
