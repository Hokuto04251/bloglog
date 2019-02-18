class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string    :name
      t.string    :location
      t.text    :blog
      t.timestamps
    end
  end
end
