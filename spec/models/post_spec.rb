require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "Create a post" do
    post = create(:post)
    expect(post.author).not_to be_empty
    expect(post.body).not_to be_empty
  end
end
