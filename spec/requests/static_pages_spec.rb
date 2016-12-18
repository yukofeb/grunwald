require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }

  describe "Home" do
    before { visit root_path }
    it { should have_title('Grunwald -千葉の天然酵母パン教室-') }
  end

#  describe "Bread Making Class" do
#    before { visit bread_path }
#    it { should have_title('Grunwald -千葉の天然酵母パン教室- | Bread Making Class') }
#  end

  describe "Cafe" do
    before { visit cafe_path }
    it { should have_title('Grunwald -千葉の天然酵母パン教室- | Cafe') }
  end

  describe "Office" do
    before { visit office_path }
    it { should have_title('Grunwald -千葉の天然酵母パン教室- | Office') }
  end

  describe "Contact" do
    before { visit contact_path }
    it { should have_title('Grunwald -千葉の天然酵母パン教室- | Contact') }
  end
end
