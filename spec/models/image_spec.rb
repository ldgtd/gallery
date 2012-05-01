require 'spec_helper'

describe Image do
  it { should have_db_column(:title) }
  it { should validate_presence_of(:title) }
end

describe Image do
  it { should have_db_column(:title) }
  it { should validate_presence_of(:title) }
end