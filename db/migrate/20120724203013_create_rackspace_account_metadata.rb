class CreateRackspaceAccountMetadata < ActiveRecord::Migration
  def change
    create_table :rackspace_account_metadata do |t|
      t.string :username
      t.string :api_access_key

      # Foreign keys
      t.integer :user_id
      t.integer :rackspace_region_id

      t.timestamps
    end
  end
end
