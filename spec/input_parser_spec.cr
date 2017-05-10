require "./spec_helper"

describe InputParser do
  it "classifies input intent as move" do
    action = InputParser.read("ir para mesa")
    action.intent.should eq("move")
  end

  it "classifies input intent as interact" do
    action = InputParser.read("ver mesa")
    action.intent.should eq("interact")
  end

  it "finds input target" do
    action = InputParser.read("ver mesa")
    action.target.should eq("mesa")
  end
end
