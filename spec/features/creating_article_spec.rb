require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/" #goes to root page

    click_link "New Article"

    #fill in the title and Body
    fill_in "Title", with: "Creating a blog"
    fill_in "Body", with: "Lorem Ipsum"

    # Create the Article
    click_button "Create Article"
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to equal(articles_path)
  end
end
