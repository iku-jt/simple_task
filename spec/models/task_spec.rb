require 'spec_helper'

describe Task do
  it "should return error if invalid param" do
    task = Task.new
    task.should_not be_valid
    task.should have(1).errors_on(:todo)
  end
end
