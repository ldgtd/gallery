require 'spec_helper'

describe Image do
  include ActionDispatch::TestProcess

  it { should have_db_column(:title) }
  it { should validate_presence_of(:title) }

  it { should belong_to(:image_store) }

  it { should validate_presence_of(:image_string) }

  context '#image_string' do

  	before do
  	  @image = FactoryGirl.build(:image, image_string: nil)
  	end

  	after do
  		@image.image_string.remove!
  	end

  	it 'should accept jpeg image (with jpg extension)' do
  		@image.image_string = fixture_file_upload('/files/image-jpeg.jpg', 'image/jpeg')
  		@image.should be_valid
  		@image.save.should be_true
  	end

  	it 'should accept jpeg image (with jpeg extension)' do
  		@image.image_string = fixture_file_upload('/files/image-jpeg.jpeg', 'image/jpeg')
  		@image.should be_valid
  		@image.save.should be_true
  	end

  	it 'should accept png image' do
  		@image.image_string = fixture_file_upload('/files/image-png.png', 'image/png')
  		@image.should be_valid
  		@image.save.should be_true
  	end

  	it 'should not accept other files (like MS doc)' do
  		@image.image_string = fixture_file_upload('/files/file-msdoc.doc', 'text/ms-doc')
  		@image.should_not be_valid
  		@image.save.should be_false
  	end
  end

end
