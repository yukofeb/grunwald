require 'rails_helper'

RSpec.describe Contact, type: :model do
  before { @contact = Contact.new(name: "Test User", email: "test@example.com",
      content: "This is description.") }

  subject { @contact }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:content) }
  it { should be_valid }

  describe "when name is not present" do
    before { @contact.name = "" }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @contact.email = "" }
    it { should_not be_valid }
  end

  describe "when content is not present" do
    before { @contact.content = "" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @contact.name = "a" * 31 }
    it { should_not be_valid }
  end

  describe "when email is too long" do
    before { @contact.email = "a" * 101 + "@example.com" }
    it { should_not be_valid }
  end

  describe "when content is too long" do
    before { @contact.content = "a" * 3001 }
    it { should_not be_valid }
  end

  describe "when email format is valid" do
    it "should be valid" do
      valid_addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      valid_addresses.each do |valid_address|
        @contact.email = valid_address
        expect(@contact).to be_valid
      end
    end
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      invalid_addresses = %w[aaa.com abc@ aaa@zzz]
      invalid_addresses.each do |invalid_address|
        @contact.email = invalid_address
        expect(@contact).not_to be_valid
      end
    end
  end

end
