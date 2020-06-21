class ChangeTweetsNameNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tweets, :name, false
  end
end
