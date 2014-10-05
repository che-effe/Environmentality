class Micropost < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
                    :url => "/system/:class/:attachment/:id_partition/:style/:filename",
                    :path => ":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  has_attached_file :photo2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
                    :url => "/system/:class/:attachment/:id_partition/:style/:filename",
                    :path => ":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/
  validates :photo, presence: true
  validates :photo2, presence: true
  validates :user_id, presence: true
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
