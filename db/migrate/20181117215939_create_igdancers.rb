class CreateIgdancers < ActiveRecord::Migration[5.2]
  def change
    create_table :igdancers do |t|
      t.string :ighandle
      t.string :post
      t.string :followers
      t.string :following
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
