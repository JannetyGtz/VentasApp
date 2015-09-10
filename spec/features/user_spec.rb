require 'rails_helper'
require 'spec_helper'


describe 'user_new', type: :feature, js: true do
#describe 'user_new',type: :feature do
  let(:user) { User.new(name: 'Luis', email: 'luis@live.com', 
    password: 'Luis1', salt: 'sfasg0')}

  it 'should show an user' do
    visit('/users/new')

    within('form') do
      fill_in 'user_name', with: user.name
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      fill_in 'user_salt', with: user.salt
    end
    click_button 'crear'
    expect(page).to have_content('Usuario creado!')
  end
end
