require "spec_helper"

feature "記事管理" do
  scenario "新規記事を作成する" do
    visit "/articles/new"

    fill_in "Title", with: "テスト"
    fill_in "Body", with: "これはテストです。"
    click_button "Create Article"

    expect(page).to have_text("Article was successfully created")
  end
end
