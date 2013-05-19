class Gallery < ActiveRecord::Base
  attr_accessible :body, :title, :url, :foto, :type_id

   has_attached_file :foto, :styles => {:original =>"600x230#", :small => "920x350#", :medium => "290x100#", :thumb => "100x100>" }
   validates_attachment_presence :foto
   validates_attachment_size :foto, :less_than => 2.megabyte
   validates_attachment_content_type :foto, :content_type => %w(image/png image/jpeg image/gif)


   default_scope order("created_at DESC")

   belongs_to :type
   validates_associated :type
   validates_presence_of :title, :type_id
end
