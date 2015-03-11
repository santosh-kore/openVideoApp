class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions, id: false do |t|
      t.text :ost_session_id, null: false
      t.text :name
      t.text :description

      t.timestamps
    end
    
  end
end