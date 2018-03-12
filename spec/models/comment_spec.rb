require 'rails_helper'

describe Comment do
  describe 'comments belong to article' do
    it { should belong_to :article }
  end
  describe 'max length body' do
    it { should validate_length_of(:body).is_at_most(4000).with_long_message('4000 characters is the maximum allowed') }
  end
end