class Image < ActiveRecord::Base
  belongs_to :album
  file_column :file
end
