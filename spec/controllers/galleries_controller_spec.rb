require 'spec_helper'

describe GalleriesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      image_store = Factory.create(:image_store)
      get 'show', id: image_store.id
      response.should be_success
    end
  end

end
