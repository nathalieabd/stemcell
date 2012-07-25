class CreateRackspaceRegions < ActiveRecord::Migration
  def change
    create_table :rackspace_regions do |t|
      t.string :name
      t.string :host

      t.timestamps
    end
  end
end
