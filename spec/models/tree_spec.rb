require 'rails_helper'

describe Tree do
  it { should validate_presence_of :title }
  it { should have_many :branches }
end
