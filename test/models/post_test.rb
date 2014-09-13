require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'a post has many comments' do
    p = Post.create
    assert_empty p.comments
    c = Comment.create post: p
    refute_empty p.comments
  end
end
