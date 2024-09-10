require 'rails_helper'

RSpec.describe "book_entries/index", type: :view do
  before(:each) do
    assign(:book_entries, [
      BookEntry.create!(
        title: "Title"
      ),
      BookEntry.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of book_entries" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
  end
end
