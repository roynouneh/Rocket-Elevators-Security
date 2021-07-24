require 'rails_helper'
require 'spec_helper'

RSpec.describe InterventionsController, :type => :controller do
    context "when a new intervention is being filled" do
        it "loads the list of employees" do
            get :new 
            expect(response).to be_successful
        end
    end

    context "when an employee id has been selected" do
        it "loads the list of customers tied to the employee" do
            get :get_form_customer_selector
            expect(response).to be_successful
        end
    end

    context "when a customer has been selected" do
        it "loads the list of buildings tied to the customer" do
            get :get_form_building_selector
            expect(response).to be_successful
        end
    end

    context "when a building has been selected" do
        it "loads the list of batteries tied to the building" do
            get :get_form_battery_selector
            expect(response).to be_successful
        end
    end

    context "when a battery has been selected" do
        it "loads the list of columns tied to the battery" do
            get :get_form_column_selector
            expect(response).to be_successful
        end
    end

    context "when a columns has been selected" do
        it "loads the list of elevators tied to the column" do
            get :get_form_elevator_selector
            expect(response).to be_successful
        end
    end
end