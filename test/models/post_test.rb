require 'test_helper'

class PostTest < Minitest::Spec
  describe 'a post' do
    before do
      @post = Post.create
    end

    describe 'without comments' do
      it 'has no comments' do
        assert_empty @post.comments
      end
    end

    describe 'with a comment' do
      before do
        @comment = Comment.create post: @post
      end

      it 'has many comments' do
        refute_empty @post.comments
      end
    end
  end
end
