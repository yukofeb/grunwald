class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :content

  validates :name, :presence => true,
                   :length => { maximum: 30 }
  validates :email, :presence => true,
                    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i },
                    :length => { maximum: 100 }
  validates :content, :presence => true,
                      :length => { maximum: 3000 }
end
