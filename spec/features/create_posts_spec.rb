require 'rails_helper'

feature 'Creates a post' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    # attach_file('Image', 'spec/files/images/Mel.jpg')
    # fill_in 'Caption', with: 'Mel is so pretty #lovemycat' 
    # click_button 'Create Post'
    # expect(page).to have_content('#lovemycat')
    # # expect(page).to have_css("img[src*='mel.jpg']")
  end
end