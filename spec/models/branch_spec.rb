require 'rails_helper'

describe Branch do
  it { should validate_presence_of :body }
  it { should belong_to :tree }
end
