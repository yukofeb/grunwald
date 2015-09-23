require 'rails_helper'

RSpec.describe Contact, type: :model do
  before { @contact = Contact.new(name: "Test User", pc_email: "test@example.com",
      content: "This is description.", home_tel: "000-1234-5678", mobile_tel: "000-1234-5678",
      mobile_email: "mobile@example.ne.jp", zip: "123-4567", address: "東京都千代田区千代田1-1-1",
      bread_making_course: "kiso_tuesday")}

  subject { @contact }

  it { should respond_to(:name) }
  it { should respond_to(:pc_email) }
  it { should respond_to(:content) }
  it { should respond_to(:home_tel) }
  it { should respond_to(:mobile_tel) }
  it { should respond_to(:mobile_email) }
  it { should respond_to(:zip) }
  it { should respond_to(:address) }
  it { should be_valid }

  describe "when name is not present" do
    before { @contact.name = "" }
    it { should_not be_valid }
  end

  describe "when pc_email is not present" do
    before { @contact.pc_email = "" }
    it { should_not be_valid }
  end

  describe "when content is not present" do
    before { @contact.content = "" }
    it { should_not be_valid }
  end

  describe "when home_tel is not present" do
    before { @contact.home_tel = "" }
    it { should be_valid }
  end

  describe "when mobile_tel is not present" do
    before { @contact.mobile_tel = "" }
    it { should be_valid }
  end

  describe "when mobile_email is not present" do
    before { @contact.mobile_email = "" }
    it { should be_valid }
  end

  describe "when zip is not present" do
    before { @contact.zip = "" }
    it { should be_valid }
  end

  describe "when address is not present" do
    before { @contact.address = "" }
    it { should be_valid }
  end

  describe "when bread_making_course is not present" do
    before { @contact.bread_making_course = "" }
    it { should be_valid }
  end

  describe "when name is too long" do
    before { @contact.name = "a" * 31 }
    it { should_not be_valid }
  end

  describe "when pc_email is too long" do
    before { @contact.pc_email = "a" * 101 + "@example.com" }
    it { should_not be_valid }
  end

  describe "when mobile_email is too long" do
    before { @contact.mobile_email = "a" * 101 + "@example.com" }
    it { should_not be_valid }
  end

  describe "when content is too long" do
    before { @contact.content = "a" * 3001 }
    it { should_not be_valid }
  end

  describe "when home_tel is too long" do
    before { @contact.home_tel = "0" * 16 }
    it { should_not be_valid }
  end

  describe "when mobile_tel is too long" do
    before { @contact.mobile_tel = "0" * 16 }
    it { should_not be_valid }
  end

  describe "when zip is too long" do
    before { @contact.zip = "0" * 11 }
    it { should_not be_valid }
  end

  describe "when address is too long" do
    before { @contact.address = "a" * 301 }
    it { should_not be_valid }
  end

  describe "when pc_email format is valid" do
    it "should be valid" do
      valid_addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      valid_addresses.each do |valid_address|
        @contact.pc_email = valid_address
        expect(@contact).to be_valid
      end
    end
  end

  describe "when pc_email format is invalid" do
    it "should be invalid" do
      invalid_addresses = %w[aaa.com abc@ aaa@zzz]
      invalid_addresses.each do |invalid_address|
        @contact.pc_email = invalid_address
        expect(@contact).not_to be_valid
      end
    end
  end

  describe "when mobile_email format is valid" do
    it "should be valid" do
      valid_addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      valid_addresses.each do |valid_address|
        @contact.mobile_email = valid_address
        expect(@contact).to be_valid
      end
    end
  end

  describe "when mobile_email format is invalid" do
    it "should be invalid" do
      invalid_addresses = %w[aaa.com abc@ aaa@zzz]
      invalid_addresses.each do |invalid_address|
        @contact.mobile_email = invalid_address
        expect(@contact).not_to be_valid
      end
    end
  end

  describe "when home_tel format is valid" do
    it "should be valid" do
      valid_home_tel = %w[000-1234-5678 1234567]
      valid_home_tel.each do |valid|
        @contact.home_tel = valid
        expect(@contact).to be_valid
      end
    end
  end

  describe "when home_tel format is invalid" do
    it "should be invalid" do
      invalid_home_tel = %w[phonenumber ___]
      invalid_home_tel.each do |invalid|
        @contact.home_tel = invalid
        expect(@contact).not_to be_valid
      end
    end
  end

  describe "when mobile_tel format is valid" do
    it "should be valid" do
      valid_mobile_tel = %w[000-1234-5678 1234567]
      valid_mobile_tel.each do |valid|
        @contact.home_tel = valid
        expect(@contact).to be_valid
      end
    end
  end

  describe "when mobile_tel format is invalid" do
    it "should be invalid" do
      invalid_mobile_tel = %w[phonenumber ___]
      invalid_mobile_tel.each do |invalid|
        @contact.mobile_tel = invalid
        expect(@contact).not_to be_valid
      end
    end
  end

  describe "when zip format is valid" do
    it "should be valid" do
      valid_zip = %w[0001234 1234567]
      valid_zip.each do |valid|
        @contact.zip = valid
        expect(@contact).to be_valid
      end
    end
  end

  describe "when zip format is invalid" do
    it "should be invalid" do
      invalid_zip = %w[zipnumber ___]
      invalid_zip.each do |invalid|
        @contact.zip = invalid
        expect(@contact).not_to be_valid
      end
    end
  end

end
