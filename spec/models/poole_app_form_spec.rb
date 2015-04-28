require 'rails_helper'

RSpec.describe PooleAppForm, type: :model do
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:api_key) }
  it { should validate_presence_of(:api_secret) }
end
