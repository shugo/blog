# language: ja
フィーチャ: 記事の削除
    まずい記事を人目に触れさせないために
    投稿者として
    記事を削除したい

    シナリオ: 記事を削除する
	前提 "テスト1"というタイトルの記事が存在している
	かつ "テスト2"というタイトルの記事が存在している
	かつ "テスト3"というタイトルの記事が存在している
	かつ "記事一覧"ページを表示している
	もし "テスト2"と表示された行の"Destroy"リンクをクリックする
	ならば "テスト2"と表示されていないこと
	かつ "テスト1"と表示されていること
	かつ "テスト3"と表示されていること
