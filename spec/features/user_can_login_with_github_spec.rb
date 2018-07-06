require 'rails_helper'

feature 'visitor can see profile info' do
    scenario 'when logged in' do
        stub_request(:get)

        visit "/"

        click_on "My Profile"

        expect(page).to have_content("#{current_user.name}")
    end 