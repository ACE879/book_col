require 'rails_helper'

RSpec.describe "book_entries/edit", type: :view do
  let(:book_entry) {
    BookEntry.create!(
      title: "MyString"
    )
  }

  before(:each) do
    assign(:book_entry, book_entry)
  end

  it "renders the edit book_entry form" do
    render

    assert_select "form[action=?][method=?]", book_entry_path(book_entry), "post" do

      assert_select "input[name=?]", "book_entry[title]"
    end
  end
end
