class CreateDocumentaryfilms < ActiveRecord::Migration[7.1]
  def change
    create_table :documentaryfilms do |t|

      t.timestamps
    end
  end
end
