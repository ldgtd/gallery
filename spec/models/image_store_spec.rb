require 'spec_helper'

describe ImageStore do
  it { should have_db_column(:name) }
  it { should validate_presence_of(:name) }
end

describe ImageStore do
  it { should have_many(:images) }
end