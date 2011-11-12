require 'spec_helper'

describe Task do
  before(:each) do
    @attr = {
      :item => "test task",
      :description => "test description",
      :priority => 10
    }
  end

  it "should create a new task given valid attributes" do
    Task.create!(@attr)
  end

  describe "task validations" do
    it "should require an item" do
      Task.new(@attr.merge(:item =>""))
      should_not be_valid
    end

    it "should require a priority" do
      Task.new(@attr.merge(:priority =>""))
      should_not be_valid
    end
  end
end
      