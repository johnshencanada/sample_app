require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "基友团" }
 	describe "Home page" do

    it "should have the content '基友团' " do
      visit root_path
      expect(page).to have_content('基友团')
    end

    it "shoud have the title 'Home' "do
       visit root_path
      expect(page).to have_title("#{base_title} | 主页")
  	end
  end

	describe "Help page" do

		it "shoud have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end

    it "shoud have the title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | 帮助")
    end
	end

	describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | 关于我们")
    end
  end

  describe "Contact" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | 联系")
    end
  end
end