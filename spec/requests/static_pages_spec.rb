require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }

  describe "Home" do
    before { visit root_path }
    it { should have_title('Grunwald') }
  end

#  describe "Bread Making Class" do
#    before { visit bread_path }
#    it { should have_title('Grunwald | Bread Making Class') }
#  end

  describe "Cafe" do
    before { visit cafe_path }
    it { should have_title('Grunwald | Cafe') }
  end

  describe "Shop" do
    before { visit shop_path }
    it { should have_title('Grunwald | Shop') }
  end
end
