# 各種環境での Key Bind Customize

1980年台後半にNEWSのKeyboardでviを覚えた。

* 記号はASCII配置
* Esc は1の左、Tabの上
* Control はAの左、Tabの下
* BackQuote/Tilde は、Quoteの右、CloseBracket の下

が理想だった。
[AX Keyboardも同じ配列](https://upload.wikimedia.org/wikipedia/commons/d/d7/KB_Japanese_AX_keyboard.svg)
だったが現在では入手不能。  
Windwos であれば、109 Keyboardを
[のどか](http://www.appletkan.com/nodoka.htm)
でリマップすれば完璧。

MacBook 2015 購入時にUS Keyboard版を購入。

* のどかのようなソフトの調査が面倒
* 単純なキーの入れ替えでは記号の再配置ができない
* Controlの位置変更はOSだけでできる
* JP Keyboard には、1 の左にキーがない

が理由だった。  
が、BackQuote と Esc の再配置が解決できず悩み続ける。

その後、Windows+remapped 109 で BackQuote の位置を妥協すれば、
各環境でほぼ同じにできることに気がついた。

BackQuote の解決とは非同期だが、Controlは右小指より左右親指が
より快適と思い最終的に SandS をヒントとして
SandC(Space and Control) にした。 

副次的に気付かされたが、英数でIME Onと入力文字種選択ができるのは快適。
US キーボードでは、Caps/英数 となりシフトキーでの修飾が、109 とは逆に
なるので注意。

のどかで CTRL+J を ESC に変更することはできた。
Google IME でも ESC が押されたと認識する。  
ESC キーを使わない事になれることができれば、
1 の左を BackQuote とする運用に変えることもできる。(2019/04/03 追記)  

1 の左を BackQuote とすることを始めた。
無変換・変換・ひらがな の3キーへのリマップをやめた。
将来の新しい用途へのリマップが可能な状態。
CTRL-AF は候補となりうる。(2019/04/23 追記)    

変換候補表示時などに、CTRL+J が ESC にならない場合がある。
保険として、スペースの右のキーを ESC にしておく事にした。(2019/04/24 追記)    

AXTCon109 というファイル名を SandC104on109 に変更した。
いろいろな変更を経て、AX 配列から乖離して 104 とほとんど同じになったのが理由。
(2019/04/24 追記)    

## Windows w/109 Keyboard

* のどか 設定ファイル: SancC104on109.nodoka  
* 109キーボードで104配列
* SandC(Space and Control)
* む　　    をエンター (Lからの相対位置を各環境でそろえる)
* ろ　　    を右シフト (?からの相対位置を各環境でそろえる)
* 半角/全角 を バッククオート＆チルダ
* CTRL+J    を ESC
* 変換      を ESC

## Windows Bootcamp on MacBook US Keyboard

* のどか 設定ファイル: mbus-104.nodoka  
* SandC(Space and Control)
* CapsLock を 英数、英数を CapsLock (シフト状態反転)
* CTRL+J   を ESC
* 右Win    を ESC

## 編集領域で emacs 風キーバインド (emacs-sub.nodoka)   

* のどか ならでは。Karabinier-elements では調査・追求しない
* Windows 標準の CTRL-CXVZ は残した
* Windows 標準の CTRL-AF は置き換えてしまった
* CTRL-AENPFB/DHK/Y で移動・削除・ペースト
* 対象アプリは、標準エディットコントロール/Notead/Thunderbird/Chrome

## Google IME

* Windows用設定ファイル: gime-keymap-esc.txt
* どんな状態でも ESC で無変換状態にする。vi のために
* ツール、プロパティ、一般、キー設定の選択「カスタム」を選んで編集ボタンを押す
* 左下の編集ボタンを押してインポートを選ぶ

## macOS on MacBook US Keyboard

* 未解決。Karabinier-elements を調査すべし
* SandC(Space and Control)
* CTRL-J を ESC
* CapsLock での IME制御をどうするか？を検討すべき
* Mac 向け Google IME で、英数で漢字変換開始できるのか？
