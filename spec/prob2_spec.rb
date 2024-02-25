require 'prob2'

RSpec.describe TodoList do
    let(:todoList) { TodoList.new() }

    describe "#add" do
      it "adds a todo to the list" do
        todoList.add("test item")
        expect(todoList.todos).to eq(["test item"])
      end
    end

    describe "#remove" do
      it "removes a todo from the list" do
        todoList.add("test item 1")
        todoList.add("test item 2")
        todoList.remove("test item 2")
        expect(todoList.todos).to eq(["test item 1"])
      end
    end

    describe "#todos" do
      it "returns all todos" do
        todoList.add("test item 1")
        todoList.add("test item 2")
        expect(todoList.todos).to eq(["test item 1", "test item 2"])
      end
    end
end
