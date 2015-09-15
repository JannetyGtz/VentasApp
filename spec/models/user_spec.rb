require 'rails_helper'

it {should belongs_to(:store)}

describe User, type: :model do
  it 'validate email' do
    email = 'formato@correo.com'
    regular_expression = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    expect(email).to match regular_expression
    email
  end
end
