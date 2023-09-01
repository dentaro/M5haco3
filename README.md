# M5haco3
haco3 game enjine on M5Core2

「ハコさん」というキャラが大活躍する（はずの）esp32で動くミニゲーム開発プラットフォームです。今のところ開発者の方向けコードの共有用ベータ版です。しばらくは仕様が変わるので、ご注意下さい。

M5シリーズのうち、Core2に対応しました。

inajobさんのo-bakoをlovyanGFXに移植し、タッチパネル対応にするため自作ライブラリDentaroUI（同梱のカスタム仕様）を追加したのがhaco3です。

スプライトも自作です。LovyanGFXもo-bakoも素晴らしいプロジェクトで、この２つをベースにhaco3はできています。

https://inajob.github.io/o-bako-simulator/index.html

JavaScript言語(Duktape)とLua5.3が動いていますが、

Luaが基本的な開発言語です。（data内のサンプルゲームを参照してください。）

platformIOプロジェクトのフォルダをコピーした「コード」だけをあげています。

ビルドオプションの設定などが必要なため、インストールはplatformIOでしかできません。（Arduino不可）

使い方は以下の通りです。

ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

＜使い方＞


１，platformIOでM5Core2のプロジェクトを作り、LovyanGFXライブラリが動作するようにする。

２，ダウンロードした「platformio.ini」「src」「lib」「data」の中身をプロジェクトフォルダにコピー

３，ゲームに必要なデータは「data」にはいっているので、SPIFFS領域にアップする（Upload File System Image機能を使ってアップできる）

４、プロジェクトをコンパイルする

（platformio.iniのCOMポートを書き込み可能なポートに書き換える必要があるかもしれません。Device機能を使って調べられます）

 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

platformIOのインストールができたら、

dataフォルダ内のinitの中身がゲームの本体になります。それぞれを編集してゲーム制作ができます。

　　・/data/init/initspr.pngが、すべてのゲームが参照しているゲームスプライトです。ドット絵を描いて編集できます。

　　・/data/init/main.luaはホーム画面そのものプログラムです。lua言語で開発ができます。

　　・/data/init/game.jsonは通常編集しません。
  
  　・/data/init/param/firstAppName.txtを編集すると、最初に起動するゲームを変えられます。
  
 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

タッチボタンについて

定数CTRLBTNNUMで定義していて、デフォルトでは９個のタッチボタンが右側に配置されています。

ゲーム選択画面（＝ホーム）では下のような番号を割り付けてあります。

[  0  ]ホーム（ハコさんロゴ部分、ゲームを選択するプログラム/init/main.luaが出ます。）

[5] [6]

[7] [8]

[  4  ]

[1] [2]

[  3  ]

ロゴ（の周辺）をクリックすると、ホームに戻ります。

1～8はゲームによって役割が違います。

ちなみにボタンの設定とレイアウトは、/init/param/uiinfo.txtで自由に設定できます。

fileのうち、拡張子がjsまたは、luaのファイルを選ぶと、ゲームがスタートします。

一番上のハコさんのロゴを押すとゲームが終了し、リセットされます。

 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
 
タッチキャリブレーションについて
 
/data/init/param/caldata.txtというファイルにタッチパネルのキャリブレーションデータが書き込まれますが、

デフォルトではデータがないので、立ち上げ時に表示される4角をタッチしてキャリブレーションをしてください。

キャリブレーションが終わると６つのパラメーターが表示されますので、写真などでメモしておくとよいです。

もう一度キャリブレーションをやり直したい場合は、

/data/init/param/caldata.txtを削除すると、4角をタッチしてキャリブレーションする画面が出ます。

 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
 
 個別のゲームについて
 
 /dataの中に入っています。
 
 jsを使って開発したい場合は参考にしてみてください。
 
 スプライトはメモリ節約のため、init/initspr.pngを参照しています。
 
 /data/star/main.lua
  
 星座を表示するプログラムです。

 /data/nav/main.lua
  
 地図を表示するプログラムです。
 
 /junkbox
  
 メモリ不足だったり、コードの仕様が変わったりといったものを詰め合わせています。お宝があるかも？中身をdataフォルダに移して動かしてみてください。
 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
 
初回に立ち上げるゲームの設定

/data/init/param/firstAppName.txtに立ち上げたいゲームのパスを一行で書いておくと、それが優先して立ち上がります。

デフォルトでは、

/star/main.lua

になっています。デバッグの際に設定すると、効率的に作業ができます。


 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
 
スプライトについて

![initspr](https://user-images.githubusercontent.com/77978725/215836664-73583fb5-a69d-4c90-aea8-afb5fa87b1df.png)

64×128のpng画像から任意の大きさをspr()で切り出して使います。

/init/initspi.pngという基本スプライトが入っており、メモリ節約のために、デフォルトではすべてのゲームがそちらを参照しています。

サンプルのキャラスプライトは8×8で切り出してから、2倍表示モードでは16×16で表示しています。


 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
 
 色について
  
  基本色は、color(0~15)までの16色です。pico-8の配色と一緒なので、pico-8のスプライトリソースがあれば使えます。

![colorNo](https://user-images.githubusercontent.com/77978725/215329561-b157ce6d-9d23-4f74-b0eb-3451bcc89fd8.png)

ホントはcolor(r,g,b)でフルカラーが使えるのはヒミツです。
  
  
 ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

 （2023.9.1)
M5Core2に対応しました。

 （2023.7.17)

fake3d,calcのサンプルを追加しました。

 （2023.6.4)

3dとfpsのサンプルを追加しました。

 （2023.5.6)

ゲーム選択時に、「.lua」「.js」の拡張子と「caldata.txt」のみを表示しメモリ使用量を抑えることで、落ちなくなりました。

min,mid,max,srnd,shl,shr,sgn,sin,cos,distance,abs,atan2,aqrt関数を追加しました。

flippy birdと3Dのサンプルを追加しました。(ほぼchatGPTで生成）

touchイベントを処理するためにtstat(x)でタッチ状態を取得できるようにしました。

（2023.3.7)

music(0)で、下のmymelo2で書き出したmymelo.hのBGMが流せるようになりました。（いまのところ1曲のみですが、「テキスト音楽サクラ」で作曲ができます）sfx(soundNo)で効果音用の波形を選べるようにしました。/data/init/sound/wave_sfx.txtに波形データが256*8個入っています。

https://koyama.verse.jp/elecraft/mymelo/
「テキスト音楽サクラ」(http://oto.chu.jp)

（2023.3.1)

haco8にmget()実装。fset()とfget()も実装。デフォルトのスプライト属性を(/init/param/sprbits.txt)から8bitで設定できるようにしました。

スプライトにアニメーション領域64*64を追加しました。

（2023.2.6)

wifiモードでの起動を外部設定ファイル(/init/param/modeset.txt)からできるようにしました。

webブラウザからの書き込みができるようになりました。

（2023.2.5)

mget関数を追加しました。

特定の色でpngファイルで絵を描くとそのままマップになるようにしました。

pngマップの色に対応するスプライトの設定を外部ファイルにしました。

（2023.2.4)
LUAでpico8に近い文法でかけるようになりました。

spr関数を追加しました。

map関数を追加しました。

（2023.2.1)

タッチしやすい2倍表示(20FPS程度)から、高速モード(30〜60FPS)に1行で切り替えられるようにしました。（src/main.cppの以下の部分）

int outputMode = FAST_MODE;//50FPS程度128*128 速いけど小さい画面　速度が必要なモード

int outputMode = WIDE_MODE;//20FPS程度240*240 遅いけれどタッチしやすい画面　パズルなど

o-bako のシーケンサー「sound」lua版をjsに移植しました。

JS,LUAともにボタンの挙動を修正しました。

初回に立ち上げるゲームを外部ファイル(init/firstAppName.txt)に書いておけるようになりました。

pngビュワ（.png)実装しました。

一行ビュワ（.txt)実装しました。

タッチキャリブレーションを実装しました。(caldata.txtを開いてください)

タッチキャリブレーションデータのSPIFFSへの保存ができるようになりました。

caldata.txtにデータがないときのみタッチキャリブレーションに自動で切り替えられるようになりました。

（2023.1.29)

タッチパネルに対応しました。

/data/drawing/main.jsにサンプルがあります。

tp(0)でx座標tp(1)でy座標を取得できます。

tbtns()で、タッチボタンを生成、グリッド配置、ボタンIDの取得ができます。

rwtb(）でタッチボタンが保持しているbool値を操作したのち、取得できます。

円形描画に対応しました。

fillCircle()で円が描けます。

タッチボタンの経過フレーム数をリターンするようにしました。

（2022.9.4)

色番号に対応しました。color(n)で色指定ができます。

（2022.9.1)

３つの物理ボタンに対応しました。

ディレクトリ名から日本語を削除しました。ディレクトリ構造を修正しました。

（2022.8.31)

Wifi機能を切ってメモリ確保しました。

RAM:   [=         ]   9.4% (used 30756 bytes from 327680 bytes)

Flash: [=====     ]  53.2% (used 697929 bytes from 1310720 bytes)

（2022.8.29)

サンプルスプライトを追加しました。


  ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

luaを使ったWebブラウザでゲーム開発ができるhaco3simによる開発も楽しいかもしれません。

https://github.com/dentaro/haco3sim/

ゲームエンジン、ゲームサンプル両方から「ハコさん」を大活躍させていただける方は、ぜひ一緒に開発していただけませんか？

プログラミングできないよという方でも使えそうなドット絵作ってみたなど、ご協力の形は楽しんでいただける方なら、なんでもOKです！

haco3をつかったお仕事があればぜひご連絡ください！

ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

2432S028R以外のオプション情報（難しい）

一応、物理ボタンにも対応しています。

ui.setupPhBtns( screen, 33, 39, 36);
のように設定できます。

ボタンの数が増えるので、定数CTRLBTNNUMを8にする

バグありありです。ご了承の上、遊んでみてください。

（少しずつ改善していきます）
