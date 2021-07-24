require 'rails_helper'
require 'spec_helper'
require 'elevator_media/streamer'

RSpec.describe ElevatorMedia, :type => :module do
    context "The module's class is instantiated to display media" do
        it "Streamer should respond to getContent method" do
            expect(ElevatorMedia::Streamer).to respond_to(:getContent)
        end
    end
end

RSpec.describe ElevatorMedia::Streamer, :type => :class do
    context "The class method prints out the media as an html string" do
        it "GetContent should output html as a string" do
            expect(ElevatorMedia::Streamer.getContent).to be_a(String)
        end
    end
end