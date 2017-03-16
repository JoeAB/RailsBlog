require 'test_helper'

class BlogFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  	test "can create an article" do
  		get "/articles/new"
  		assert_response :success
 
  		post "/articles",
    	params: { article: { title: "can create", body: "article successfully." } }
  		assert_response :redirect
  		follow_redirect!
  		assert_response :success
  		assert_select "p", "Title:\n  can create"
	end
	
	test "can create comment" do
	  	get "/articles/new" 
  		post "/articles",
    	params: { article: { title: "commenting article", body: "article successfully." } }
  		follow_redirect!
		post "comments/create",
		params: { comment: { commenter: "commenter", body: "content" }}
		assert_select "p", "Commenter: commenet"

	end
end
