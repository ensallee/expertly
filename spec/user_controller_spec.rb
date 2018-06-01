require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  include Capybara::DSL
  render_views

  describe "GET home" do
    it "renders the home template with home layout" do
       visit '/'

       expect(response).to render_template("home")
       expect(response).to render_template("layouts/home")

       expect(page.find("h1").text).to eq("Welcome to Expertly")
       expect(page.find("p").text).to eq("A Rails app that will broaden your horizons.")
     end
  end

  describe "GET sign up form" do

      it "renders a signup page" do
        visit '/signup'
        expect(response).to render_template("new")
        expect(response).to render_template("layouts/home")

        expect(page.find("h1").text).to eq("Sign Up!")
      end
    end

end
