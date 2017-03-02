require 'rails_helper'

RSpec.describe GoalsController, type: :controller do

  describe "GET #index" do

    it "renders the json: @goal_data" do
      expect(subject).to render_template(@goal_data)
    end
  end

  # describe "POST #create" do
  #   context "with valid attributes" do
  #     subject { get :index }
  #   it "creates a new Goal" do
  #     #goal count increases
  #   end
  #   it "renders the :new template" do
  #     expect(subject).to render_template("gadgets/index")
  #   end
  #
  #   it "redirects to /dashboard" do
  #
  #   end
  #
  #   it "does not do above with an existing goal" do
  #     #i.e. no goal count
  #   end
  #   end
  #
  #   context "user not logged in" do
  #     #i.e. path
  #   end
  #
  #   context "with invalid attributes" do
  #     #ie. goal count not up
  #     #graceful handling of the route changes
  #
  #   end
end
