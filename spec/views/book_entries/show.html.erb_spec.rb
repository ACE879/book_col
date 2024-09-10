require 'rails_helper'

RSpec.describe "book_entries/show", type: :view do
  before(:each) do
    assign(:book_entry, BookEntry.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
