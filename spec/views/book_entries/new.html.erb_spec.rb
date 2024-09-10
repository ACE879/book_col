require 'rails_helper'

RSpec.describe "book_entries/new", type: :view do
  before(:each) do
    assign(:book_entry, BookEntry.new(
      title: "MyString"
    ))
  end

  it "renders new book_entry form" do
    render

    assert_select "form[action=?][method=?]", book_entries_path, "post" do

      assert_select "input[name=?]", "book_entry[title]"
    end
  end
end
