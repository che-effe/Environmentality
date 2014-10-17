class Micropost < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, :styles =>
    {
      :medium => "300x300>",
      :thumb => "100x100#"
    },
  :default_url => "/images/:style/missing.png",
  :bucket => 'trashpicer',
  :storage        => :s3,
  :s3_credentials => {:bucket            => ENV['AWS_BUCKET'           ],
                      :access_key_id     => ENV['AWS_ACCESS_KEY_ID'    ],
                      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']},
  :s3_protocol    => "https"                                             ,
  :s3_host_name   => "s3.amazonaws.com",
  :url => "/:class/:attachment/:id_partition/:style/:filename",
  :path => "/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  has_attached_file :photo2, :styles => { :medium => "300x300>", :thumb => "100x100#" },
  :default_url => "/images/:style/missing.png",
                      :bucket => 'trashpicer',
                      :storage        => :s3,
                      :s3_credentials => {:bucket            => ENV['AWS_BUCKET'           ],
                                          :access_key_id     => ENV['AWS_ACCESS_KEY_ID'    ],
                                          :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']},
                      :s3_protocol    => "https"                                             ,
                      :s3_host_name   => "s3.amazonaws.com",
  :url => "/:class/:attachment/:id_partition/:style/:filename",
  :path => "/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/
  # validates :photo, presence: true
  # validates :photo2, presence: true
  validates :user_id, presence: true
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  def s3_credentials
    {:bucket => 'trashpicer', :access_key_id => 'AKIAJWIAAV7JAF2H6TKQ', :secret_access_key => "xxx"}
  end
end
