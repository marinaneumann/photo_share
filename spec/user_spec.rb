require 'rails_helper'
describe User do
  it{ should validate_presence_of :email}
  it{ should validate_presence_of :password}
  it{ should validate_presence_of :password_confirmation}
  it{ should validate_uniqueness_of :email}

  it{ should have_many :photos}
  it{ should have_many :tags}
  it{ should have_many :favorites}
end
