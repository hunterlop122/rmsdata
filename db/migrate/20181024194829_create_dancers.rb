class CreateDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :dancers do |t|
      t.string :firstname
      t.string :lastname
      t.string :location
      t.string :dancestyle
      t.string :email
      t.string :phone
      t.string :ighandle

    end
  end
end
