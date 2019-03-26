require 'discordrb'

#client_idはbotに設定されているものを入力 prefixはコマンドの呼び出しの時の記号(!play 等の!部分 ?とかでも可)
bot = Discordrb::Commands::CommandBot.new token: 'NTU0MTA0NTQ1ODAyNzE1MTg3.D2Xxsg.Q40TDn2pRQj-cPsZkSVoKyr1K8M', client_id: 554104545802715187, prefix: "ぶき"
#スプラトゥーンの武器名が入っているcsvファイルを読み込み

#ブキ一覧
armo = ["わかばシューター",
"９６ガロン",
"Ｎ－ＺＡＰ８５",
"Ｈ３リールガンＤ",
"ダイナモローラーテスラ",
"ヒッセン",
"スクイックリンα",
"スパイガジェットベッチュー",
"ハイドラントカスタム",
"ケルビン５２５ベッチュー",
"Ｒブラスターエリートデコ"]
rain = ["もみじシューター",
"プライムシューター",
"カーボンローラー",
"スパッタリー・ヒュー",
"リッター４Ｋ",
"４Ｋスコープ",
"Ｒブラスターエリート",
"ロングブラスター",
"スプラスピナーコラボ",
"ヒッセン・ヒュー",
"パラシェルター",
"ヒーローシェルター レプリカ",
"デュアルスイーパーカスタム",
"ノヴァブラスターベッチュー",
"オーバーフロッシャー",
"クーゲルシュライバー・ヒュー"]
land = ["ホットブラスター",
"スパイガジェット",
"パブロ",
"スプラローラー",
"ヒーローローラー レプリカ",
"ソイチューバー",
"ハイドラント",
"スプラシューター",
"ボールドマーカー",
"ヒーローシューター レプリカ",
"クアッドホッパーブラック",
"９６ガロンデコ",
"ヒーローブラスター レプリカ",
"スクリュースロッシャーベッチュー"]
jetp = ["スプラシューターコラボ",
"シャープマーカー",
"スプラマニューバーコラボ",
"オクタシューター レプリカ",
"Ｌ３リールカンＤ",
"ケルビン５２５",
"ホットブラスターカスタム",
"ラピッドブラスターデコ",
"ホクサイ",
"ヒーローブラシ レプリカ",
"ソイチューバーカスタム",
"クーゲルシュライバー",
"ノーチラス７９"]
bomb = ["ノヴァブラスターネオ",
"ラピッドブラスター",
"パラシェルターソレーラ",
"スクリュースロッシャーネオ",
"ヴァリアブルローラー",
"スプラチャージャーコラボ",
"スプラスコープコラボ",
"プロモデラーＭＧ",
"スパッタリー",
"シャープマーカーネオ",
"クアッドホッパーホワイト",
"１４式竹筒銃・乙",
"カーボンローラーデコ",
"オーバーフロッシャーデコ",
"キャンピングシェルターソレーラ"]
sphe = ["プロモデラーＲＧ",
"５２ガロン",
"Ｌ３リールガン",
"ノヴァブラスター",
"パブロ・ヒュー",
"スプラチャージャーベッチュー",
"スプラローラーコラボ",
"バケットスロッシャーデコ",
"スプラスコープベッチュー",
"スクイックリンβ",
"スプラマニューバーベッチュー",
"ラピッドブラスターベッチュー",
"エクスプロッシャーカスタム",
"ノーチラス４７",
"スパイガジェットソレーラ"]
bubb = ["ボトルカイザーフォイル",
"プライムシューターコラボ",
"ケルビン５２５デコ",
"リッター４Ｋカスタム",
"４Ｋスコープカスタム",
"バレルスピナーデコ",
"キャンピングシェルター",
"スプラローラーベッチュー",
"エクスプロッシャー",
"おちばシューター",
"ロングブラスターカスタム"]
pres = ["５２ガロンデコ",
"ジェットスイーパーカスタム",
"ボトルカイザー",
"クラッシュブラスター",
"スクリュースロッシャー",
"バレルスピナー",
"ヒーロースピナー レプリカ",
"スプラチャージャー",
"スプラスコープ",
"ヒーローチャージャー レプリカ",
"ダイナモローラー"]
miss = ["ジェットスイーパー",
"Ｎ－ＺＡＰ８９",
"Ｈ３リールガン",
"デュアルスイーパー",
"ボールドマーカーネオ",
"スプラマニューバー",
"ヒーローマニューバー レプリカ",
"ヴァリアブルローラーフォイル",
"ホクサイ・ヒュー",
"クラッシュブラスターネオ",
"バケットスロッシャー",
"ヒーロースロッシャー レプリカ",
"スプラスピナー",
"１４式竹筒銃・甲",
"スプラシューターベッチュー"]
nice = ["ダイナモローラーベッチュー",
"プライムシューターベッチュー",
"５２ガロンベッチュー"]
unco = ["スプラスピナーベッチュー",
"Ｌ３リールガンベッチュー",
"ホクサイベッチュー"]

#すべてのブキランダム
all = ["ボールドマーカー",
"ボールドマーカーネオ",
"わかばシューター",
"もみじシューター",
"おちばシューター",
"プロモデラーＭＧ",
"プロモデラーＲＧ",
"シャープマーカー",
"シャープマーカーネオ",
"ノヴァブラスター",
"ノヴァブラスターネオ",
"ノヴァブラスターベッチュー",
"スパッタリー",
"スパッタリー・ヒュー",
"ホクサイ",
"ヒーローブラシ レプリカ",
"ホクサイ・ヒュー",
"ホクサイベッチュー",
"パブロ",
"パブロ・ヒュー",
"カーボンローラー",
"カーボンローラーデコ",
"ヒッセン",
"ヒッセン・ヒュー",
"スプラシューター",
"スプラシューターコラボ",
"ヒーローシューター レプリカ",
"オクタシューター レプリカ",
"スプラシューターベッチュー",
"Ｎ－ＺＡＰ８５",
"Ｎ－ＺＡＰ８９",
"５２ガロン",
"５２ガロンデコ",
"５２ガロンベッチュー",
"クアッドホッパーブラック",
"クアッドホッパーホワイト",
"スプラマニューバー",
"スプラマニューバーコラボ",
"ヒーローマニューバー レプリカ",
"スプラマニューバーベッチュー",
"ホットブラスター",
"ホットブラスターカスタム",
"ヒーローブラスター レプリカ",
"クラッシュブラスター",
"クラッシュブラスターネオ",
"パラシェルター",
"ヒーローシェルター レプリカ",
"パラシェルターソレーラ",
"スパイガジェット",
"スパイガジェットソレーラ",
"スパイガジェットベッチュー",
"スプラローラー",
"スプラローラーコラボ",
"ヒーローローラー レプリカ",
"スプラローラーベッチュー",
"プライムシューター",
"プライムシューターコラボ",
"プライムシューターベッチュー",
"Ｌ３リールガン",
"Ｌ３リールカンＤ",
"Ｌ３リールガンベッチュー",
"９６ガロン",
"９６ガロンデコ",
"Ｈ３リールガン",
"Ｈ３リールガンＤ",
"ボトルカイザー",
"ボトルカイザーフォイル",
"ラピッドブラスター",
"ラピッドブラスターデコ",
"ラピッドブラスターベッチュー",
"ロングブラスター",
"ロングブラスターカスタム",
"ヴァリアブルローラー",
"ヴァリアブルローラーフォイル",
"スクリュースロッシャー",
"スクリュースロッシャーネオ",
"スクリュースロッシャーベッチュー",
"デュアルスイーパー",
"デュアルスイーパーカスタム",
"ケルビン５２５",
"ケルビン５２５デコ",
"ケルビン５２５ベッチュー",
"キャンピングシェルター",
"キャンピングシェルターソレーラ",
"スクイックリンα",
"スクイックリンβ",
"バケットスロッシャー",
"ヒーロースロッシャー レプリカ",
"バケットスロッシャーデコ",
"スプラスピナー","スプラスピナーコラボ",
"スプラスピナーベッチュー",
"ノーチラス４７",
"ノーチラス７９",
"Ｒブラスターエリート",
"Ｒブラスターエリートデコ",
"ジェットスイーパー",
"ジェットスイーパーカスタム",
"スプラチャージャー",
"スプラスコープ",
"スプラチャージャーコラボ",
"スプラスコープコラボ",
"ヒーローチャージャー レプリカ",
"スプラチャージャーベッチュー",
"スプラスコープベッチュー",
"リッター４Ｋ",
"４Ｋスコープ",
"リッター４Ｋカスタム",
"４Ｋスコープカスタム",
"ソイチューバー",
"ソイチューバーカスタム",
"１４式竹筒銃・甲",
"１４式竹筒銃・乙",
"エクスプロッシャー",
"エクスプロッシャーカスタム",
"バレルスピナー",
"ヒーロースピナー レプリカ",
"バレルスピナーデコ",
"ハイドラント",
"ハイドラントカスタム",
"クーゲルシュライバー",
"クーゲルシュライバー・ヒュー",
"ダイナモローラー",
"ダイナモローラーテスラ",
"ダイナモローラーベッチュー",
"オーバーフロッシャー",
"オーバーフロッシャーデコ" ]

#"ぶきち"とチャットに入力があった場合反応
bot.command :ち do |event|
    event.respond "
 ＼アルファチーム は これを 使う でし！／
￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}


 ＼ブラボーチーム は これを 使う でし！／
￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}
    ◆ #{all[rand(all.length)]}"
end

#”ぶきる”とチャットに入力があった場合反応
bot.command :る do |event|
  event.respond "＼ #{all[rand(all.length)]} ／ を 使うでし！"
end

#”ぶきリグ”とチャットに入力があった場合反応
bot.command :リグ do |event|
  event.respond "
＼このチーム は このブキ で 戦うでし！／
￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
   ◆ #{all[rand(all.length)]}
   ◆ #{all[rand(all.length)]}
   ◆ #{all[rand(all.length)]}
   ◆ #{all[rand(all.length)]}"
end

#”ぶきペア”とチャットに入力があった場合反応
bot.command :ペア do |event|
  event.respond "
＼ふたり は このブキ で 戦うでし！／
￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣
   ◆ #{all[rand(all.length)]}
   ◆ #{all[rand(all.length)]}"
end

#”ぶきアーマー”とチャットに入力があった場合反応
bot.command :アーマー do |event|
  event.respond "＼ #{armo[rand(armo.length)]} ／ を 使うでし！"
end

#”ぶきアメ”とチャットに入力があった場合反応
bot.command :アメ do |event|
  event.respond "＼ #{rain[rand(rain.length)]} ／ を 使うでし！"
end

#”ぶきチャクチ”とチャットに入力があった場合反応
bot.command :チャクチ do |event|
  event.respond "＼ #{land[rand(land.length)]} ／ を 使うでし！"
end

#”ぶきジェッパ”とチャットに入力があった場合反応
bot.command :ジェッパ do |event|
  event.respond "＼ #{jetp[rand(jetp.length)]} ／ を 使うでし！"
end

#”ぶきボムピ”とチャットに入力があった場合反応
bot.command :ボムピ do |event|
  event.respond "＼ #{bomb[rand(bomb.length)]} ／ を 使うでし！"
end

#”ぶきスフィア”とチャットに入力があった場合反応
bot.command :スフィア do |event|
  event.respond "＼ #{sphe[rand(sphe.length)]} ／ を 使うでし！"
end

#”ぶきバブル”とチャットに入力があった場合反応
bot.command :バブル do |event|
  event.respond "＼ #{bubb[rand(bubb.length)]} ／ を 使うでし！"
end

#”ぶきハイプレ”とチャットに入力があった場合反応
bot.command :ハイプレ do |event|
  event.respond "＼ #{pres[rand(pres.length)]} ／ を 使うでし！"
end

#”ぶきマルミ”とチャットに入力があった場合反応
bot.command :マルミ do |event|
  event.respond "＼ #{miss[rand(miss.length)]} ／ を 使うでし！"
end

#”ぶきナイス”とチャットに入力があった場合反応
bot.command :ナイス do |event|
  event.respond "＼ #{nice[rand(nice.length)]} ／ を 使うでし！"
end

#”ぶきハンコ”とチャットに入力があった場合反応
bot.command :ハンコ do |event|
  event.respond "＼ #{unco[rand(unco.length)]} ／ を 使うでし！"
end

#”ぶきヘルプ”とチャットに入力があった場合反応
bot.command :ヘルプ do |event|
  event.respond "
ぶきコマンド一覧
￣￣￣￣￣￣￣￣
ぶきヘルプ……この文章の表示

ぶきる……ひとり用ブキルーレット
ぶきち……プラベ用ブキルーレット

ぶきリグ……４リグ用ブキルーレット
ぶきペア……２リグ用ブキルーレット

《各スペシャルのブキルーレットコマンド》
ぶきアーマー
ぶきアメ
ぶきジェッパ
ぶきチャクチ
ぶきボムピ
ぶきスフィア
ぶきバブル
ぶきハイプレ
ぶきマルミ
ぶきナイス
ぶきハンコ
"
end

bot.run
