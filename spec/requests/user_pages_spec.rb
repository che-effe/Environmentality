require 'spec_helper'

describe "UserPages" do
  describe "GET /user_pages" do
    subject {page}
    before { visit signup_path }
    it {should have_content('Sign up')}
    it {should have_title(full_title('Sign up'))}
  end
end
