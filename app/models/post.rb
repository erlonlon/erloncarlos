class Post < ActiveRecord::Base
  attr_accessible :ativo, :body, :published, :subtitle, :title, :url, :category_id

  default_scope :order => "created_at DESC"

  belongs_to :category
  validates_presence_of :title, :category_id
  validates_associated :category
  #verifica se o post esta ativo ou não
  validates_inclusion_of :ativo, in:[true, false]

  def self.published
   where("ativo = ? AND published < ? ", false, Time.current)
  end


 


end
