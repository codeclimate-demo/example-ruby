require "spec_helper"
require_relative "../complexity"

describe Example do
  describe "#abc_example" do
    it "provides an example for abc complexity" do
      expect{
        Example.new.abc_example
      }.to_not raise_error
    end
  end

  describe "#cyclomatic_complexity" do
    it "provides an example for cyclomatic complexity" do
      expect{
        Example.new.cyclomatic_complexity
      }.to_not raise_error
    end
  end

  describe "#parameter_lists" do
    it "provides an example for parameter lists" do
      expect{
        Example.new.parameter_lists(1, 2, 3)
      }.to_not raise_error
    end
  end

  describe "#perceived_complexity" do
    it "provides an example for perceived complexity" do
      expect{
        Example.new.perceived_complexity
      }.to_not raise_error
    end
  end
end
