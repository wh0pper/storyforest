require 'rails_helper'

describe Tree do
  it 'has an title' do
    tree = FactoryBot.create(:tree)
    tree.title.should eq ('Paul')
  end

  it { should have_many(:branches) }

end
