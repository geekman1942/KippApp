class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.datetime :time
    	t.string :name
    	t.string :place
    	t.text :description
      t.timestamps
    end
  end
end
