class CreateEmojis < ActiveRecord::Migration[7.1]
  def change
    create_table :emojis do |t|
      t.string :utf8_code

      t.timestamps
    end
  end
end
