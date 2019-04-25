# Key Bind Customize の話

[https://github.com/bx19tri/keybind](https://github.com/bx19tri/keybind)

1980 年台後半に NEWS の Keyboard で vi を覚えた。

* 記号はASCII配置
* Esc は 1 の左、Tab の上
* Control は A の左、Tab の下
* BackQuote/Tilde は、Quote の右、CloseBracket の下

が理想だった。
[AX Keyboardも同じ配列](https://upload.wikimedia.org/wikipedia/commons/d/d7/KB_Japanese_AX_keyboard.svg)
だったが現在では入手不能。  
Windwos であれば、109 Keyboardを
[のどか](https://appletllc.com/web/nodoka.htm)
でリマップすれば完璧。(過去には mayu や猫招きも利用)  
そのため、PC では 104 キーボードを選択したことはなかった。

MacBook 2015 購入時に US Keyboard 版を購入。

* のどかのようなソフトの調査が面倒
* 単純なキーの入れ替えでは、109 から 104 への記号の再配置ができない
* Control の位置変更は OS だけでできる
* JP Keyboard には、1 の左にキーがない。リマップしても救えない

が理由だった。  
が、BackQuote と Esc の再配置がキーが足りないために解決できずに
悩み続ける。(PC で 104 を避けてきた理由そのもの)

その後、remapped 109 on Windows で BackQuote の位置を妥協すれば、
各環境でほぼ同じにできることに気がついた。

BackQuote の解決とは非同期だが、Control は右小指より左右親指が
より快適と思い変換・無変換を Control にリマップするようになった。  
最終的に SandS(Space and Shift) をヒントとして
SandC(Space and Control) にした。 

副次的に気付かされたが、英数で IME On と入力文字種選択ができるのは快適。
US キーボードでは Caps/英数 となりシフトキーでの修飾が 109 とは逆に
なるが、のどかならば逆転可能。

(2019/04/03 追記)  
のどかで CTRL+J を Esc に変更してみた。
Google IME でも Esc が押されたと認識する。  
Esc キーを使わない事に慣れることができれば、
1 の左を BackQuote とする運用に変えることもできる。

(2019/04/23 追記)    
1 の左を BackQuote とすることを始めた。
無変換・変換・ひらがな の3キーへのリマップをやめた。  
将来、新しい用途へのリマップが可能な状態。  
emacs 風キーバインドで機能変更した CTRL-AF は候補となりうるが未実施。

(2019/04/24 追記)    
AXTCon109 というファイル名を SandC104on109 に変更した。
いろいろな変更を経て、AX 配列から乖離して 104 とほとんど同じになったのが理由。
紆余曲折を経て、追加でエンターをバックスペースに入れ替えれば、
変換が右Altより押しやすい以外は 104 でも同じ配列を実現できる状態となった。

## 今後どんなキーボードを選ぶか？

* Mac であれば、US Keyboard 一択。日本語配列は腐っていてリマップしても救えない。
* PC では、右端の配列に不自然さがなければ 109。
* 右端が、104 がまともで 109 がいびつなノートPC の場合は 104 を選択。
* 使い分ける機材から 104 を排除できるのであれば、AX on 109 への復帰が幸せかも。

## Windows w/109 Keyboard

* のどか 設定ファイル: SancC104on109.nodoka
* 109キーボードで104配列
* SandC(Space and Control)
* む　　    をエンター (Lからの相対位置を各環境でそろえる)
* ろ　　    を右シフト (?からの相対位置を各環境でそろえる)
* 半角/全角 を バッククオート＆チルダ
* CTRL+J    を Esc
* 変換      を Esc

## Windows Bootcamp on MacBook US Keyboard

* のどか 設定ファイル: mbus-104.nodoka
* SandC(Space and Control)
* CapsLock を 英数、英数を CapsLock (シフト状態反転)
* CTRL+J   を Esc
* 右Win    を Esc

## 編集領域で emacs 風キーバインド

* のどか 設定ファイル: emacs-sub.nodoka
* のどか ならでは機能。Karabinier-elements では調査・追求しない
* Windows 標準の CTRL-CXVZ は置き換えない
* Windows 標準の CTRL-AF は置き換えてしまった
* CTRL-W は Chrome などでタブを閉じるのに使っているので置き換えない
* CTRL-AENPFB/DHK/Y で移動・削除・ペースト
* 対象は、標準エディットコントロール/Notead/Thunderbird/Chrome

## Google IME

* Windows用設定ファイル: gime-keymap-esc.txt
* 6種類の状態で Esc で無変換状態にする。vi との親和性高い。
* ツール、プロパティ、一般、キー設定の選択「カスタム」を選んで編集ボタンを押す
* 左下の編集ボタンを押してインポートを選ぶ

## macOS on MacBook US Keyboard

* 未解決。Karabinier-elements を調査すべし
* SandC(Space and Control) をやりたい。SandS の情報あり
* CTRL-J を Esc
* CapsLock での IME制御をどうするか？を検討すべき
* Mac 向け Google IME で、英数で漢字変換開始できるのか？

## 追加検討項目
* CTRL-M → Enter   
  emacs-edit 対象では実施済み。Excel では、Enter 扱いされない
* CTRL-H → BS  
  emacs-edit 対象では実施済み。 
* CTRL-I → Tab   
  CTRL-Tab というショートカットがあるのでやめたほうが良い。
* CTRL-J → Esc を実施しないで同じ結果を得る方法を試す。  
  vim/Google IME の設定変更で実施
* Linux Desktop の場合はどうすればよいかの調査

