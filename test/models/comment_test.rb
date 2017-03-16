require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  	test "Empy comment" do
		comment = Comment.new
		assert_not comment.save, "Submitted an empty comment."
  	end
end
