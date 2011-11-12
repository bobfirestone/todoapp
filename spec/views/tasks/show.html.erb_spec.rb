require 'spec_helper'

describe "tasks/show.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :item => "Item",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
