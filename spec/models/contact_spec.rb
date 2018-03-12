require 'spec_helper'

RSpec.describe Contact, :type => :model do
  it { should validates_presence_of(:email) }
end