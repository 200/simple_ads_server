require 'spec_helper'

describe StatRecordsController do

  describe "GET 'day'" do
    it "should be successful" do
      get 'day'
      response.should be_success
    end
  end

end
