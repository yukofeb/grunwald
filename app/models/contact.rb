class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :content

  validates(:name, :presence => true)
  validates(:email, :presence => true,
                    :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i })
  validates(:content, :presence => true)
end
