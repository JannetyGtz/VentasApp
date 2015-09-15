# require 'rails_helper'
# require 'spec_helper'

# describe 'User_new', type: :feature, js: true do
# #describe 'user_new',type: :feature do
#   let(:user) { User.new(name: 'Jannety', email: 'jannetygtz@live.com',
#     password: 'Jannety1', cellphone: '6141389632')}

#   it 'should show an user' do
#     visit('/users/new')

#     within('form') do
#       fill_in 'user_store_id', with: 1
#       fill_in 'user_name', with: user.name
#       fill_in 'user_email', with: user.email
#       fill_in 'user_password', with: user.password
#       fill_in 'user_salt', with: user.cellphone
#     end
#     click_button 'crear'
#     expect(page).to have_content('Usuario creado!')
#   end
# end
