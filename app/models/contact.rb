class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :content,
                :home_tel, :mobile_tel,
                :zip, :address

  validates :name, :presence => true,
                   :length => { maximum: 30 }
  validates :email, :presence => true,
                    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i },
                    :length => { maximum: 100 }
  validates :content, :presence => true,
                      :length => { maximum: 3000 }
  validates :home_tel, :presence => false,
                       :length => { maximum: 15 },
                       :format => { :with => /[0-9\-]+/i },
                        unless: Proc.new { |a| a.home_tel.blank? }
  validates :mobile_tel, :presence => false,
                         :length => { maximum: 15 },
                         :format => { :with => /[0-9\-]+/i },
                   unless: Proc.new { |a| a.mobile_tel.blank? }
  validates :zip, :presence => false,
                  :length => { maximum: 10 },
                  :format => { :with => /[0-9\-]+/i },
                   unless: Proc.new { |a| a.zip.blank? }
  validates :address, :presence => false,
                      :length => { maximum: 300 }
end
