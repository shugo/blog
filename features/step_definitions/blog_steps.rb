PAGES = {
  "記事一覧" => "/articles/",
  "新規記事" => "/articles/new"
}

前提(/^"(.*?)"というタイトルの記事が存在している$/) do |title|
  Article.create!(title: title, body: "")
end

前提(/^"(.*?)"ページを表示している$/) do |name|
  visit PAGES[name]
end

もし(/^"(.*?)"に"(.*?)"と入力する$/) do |name, value|
  fill_in name, with: value
end

もし(/^"(.*?)"ボタンをクリックする$/) do |name|
  click_button name
end

ならば(/^"(.*?)"と表示されていること$/) do |text|
  expect(page).to have_text(text)
end

もし(/^"(.*?)"と表示された行の"(.*?)"リンクをクリックする$/) do |text, link|
  find("tr", text: text).click_link(link)
end

ならば(/^"(.*?)"と表示されていないこと$/) do |text|
  expect(page).not_to have_text (text)
end
