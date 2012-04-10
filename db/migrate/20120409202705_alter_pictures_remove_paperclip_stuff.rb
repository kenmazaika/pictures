class AlterPicturesRemovePaperclipStuff < ActiveRecord::Migration
  def self.up
#    remove_column :pictures, :file_file_name
#    remove_column :pictures, :file_content_type
#    remove_column :pictures, :file_file_size
#    remove_column :pictures, :file_updated_at
  end

  def self.down
#    add_column :pictures, :file_file_name, :string
#    add_column :pictures, :content_type, :string
#    add_column :pictures, :file_file_szie, :integer
#    add_column :pictures, :file_updated_at, :datetime
  end
end
