require 'test_helper'

class PicturesControllerTest < ActionController::TestCase

  test "new" do
    get :new

    assert_response :success
    assert assigns['picture']
  end

  test "index" do
    3.times do 
      Factory(:picture)
    end

    get :index

    assert_response :success
    assert_equal 3, assigns['pictures'].count
  end

  test "create" do
    image = fixture_file_upload('prof.gif')

    # http://stackoverflow.com/questions/7793510/mocking-file-uploads-in-rails-3-1-controller-tests
    class << image 
      attr_reader :tempfile
    end
    
    assert_difference 'Picture.count' do
      post :create, :picture => {:picture => image, :name => 'Good News!'} 
    end
    assert_redirected_to pictures_path
    
    picture = Picture.last
    assert_equal 'Good News!', picture.name
  end

  test "create validation error" do
    assert_no_difference 'Picture.count' do
      post :create, :picture => {}
    end

    assert_response :unprocessable_entity
    assert_template :new
  end

end
