class Contact < ActiveRecord::Base
  attr_accessible :body, :email, :name, :title, :nickname

  default_scope :order => "created_at DESC"

 validates_presence_of :name , :email, :title
 validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i






  captcha :nickname
end
