# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it 'should have an adminuser' do
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
    expect(AdminUser.first).not_to be_nil
  end
end
