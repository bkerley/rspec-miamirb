require 'rails_helper'

RSpec.describe Post, :type => :model do
  subject{ described_class.create }
  it 'has many comments' do
    expect(subject.comments).to be_empty
    c = Comment.create post: subject
    expect(subject.comments).to_not be_empty
  end
end
