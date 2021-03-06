require 'spec_helper'

describe 'Sign In Page' do

  before { visit new_user_session_path }

  subject { page }

  it { should have_title('App | Sign In') }
  it { should have_selector('h1', text: 'Sign In') }
end
