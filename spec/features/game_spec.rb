require 'spec_helper'

feature 'Create a game' do
  background(:all) do 
    @user = create (:user)
    @user.activate!
    sign_in(@user.email,'password')
  end

  after(:all) do
    @user.destroy
  end

  scenario 'Can create a game' do
    visit '/'
    click_link 'Create Game'
    fill_in 'Name', :with => 'lunch'
    click_button "Create"

    expect(page).to have_content('lunch')
    expect(page).to have_content("Created by #{@user.name}")
  end
end
