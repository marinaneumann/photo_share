require 'rails_helper'

  describe "the signin process" do
    it "signs a user in who uses the right password" do
      user = User.create(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
      visit '/login'
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
      click_button 'Log In'
      expect(page).to have_content 'Say Cheese'
    end

    it "gives a user an error who uses the wrong password" do
      visit '/login'
      user = User.create(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'wrong'
      click_button 'Log In'
      expect(page).to have_content 'Log In'
    end
  end