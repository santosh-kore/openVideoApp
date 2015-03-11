class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.text :token
      t.text :created_by
      t.text :ost_session_id

      t.timestamps
    end
  end
end
