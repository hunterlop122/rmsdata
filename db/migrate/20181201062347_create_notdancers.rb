class CreateNotdancers < ActiveRecord::Migration[5.2]
  def change
    create_table :notdancers do |t|
      t.string :ighandle

    end
  end
end
