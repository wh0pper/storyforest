require 'rails_helper'

describe Branch do
  it 'has a body' do
    branch = FactoryBot.create(:branch)
    branch.body.should eq ('David')
  end

  it { should belong_to :tree }
end
