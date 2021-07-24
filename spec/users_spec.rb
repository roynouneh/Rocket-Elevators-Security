require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, :type => :controller do
    context "When a new user is being created" do
        it "If the field requirements are met, it should save" do
            get :new
            expect(@user.save).to eq(false)
        end
    end
end

#model user, controller user (user.new) (password, or email. need both) when creating user expecting false, then if works then true