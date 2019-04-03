# 各種環境でのKey Bind Customize

1980年台後半にNEWSのKeyboardでviを覚えた。

* 記号はASCII配置
* Esc は1の左、Tabの上
* Control はAの左、Tabの下
* BackQuote/Tilde は、Quoteの右、CloseBracket の下

が理想。
[AX Keyboardも同じ配列](https://upload.wikimedia.org/wikipedia/commons/d/d7/KB_Japanese_AX_keyboard.svg)
だったが現在では入手不能。  
Windwos であれば、109 Keyboardを
[のどか](http://www.appletkan.com/nodoka.htm)
でリマップすれば完璧。

Macbook 2015 購入時にUS Keyboard版を購入。

* のどかのようなソフトの調査が面倒
* 単純なキーの入れ替えでは記号の再配置ができない
* Controlの位置変更はOSだけでできる
* JP Keyboard には、1 の左にキーがない

が理由だった。  
が、BackQuote と Esc の再配置が解決できず悩み続ける。

その後、Windows+remapped 109 で BackQuote の位置を妥協すれば、
各環境でほぼ同じにできることに気がついた。

BackQuote の解決とは非同期だが、Controlは右小指より左右親指が
より快適と思い最終的にSandCにした。  

副次的に気付かされたが、英数でIME Onと入力文字種選択ができるのは快適。
US キーボードでは、Caps/英数 となりシフトキーでの修飾が、109 とは逆に
なるので注意。

のどかで CTRL+J を ESC に変更することはできた。
Google IME でもESCが押されたと認識する。  
ESC キーを使わない事になれることができれば、1の左を BackQuote とする
運用に変えることもできる。  

## Windows w/109 Keyboard

* のどか 設定ファイル: AXTCon109.nodoka  
* 109キーボードで101配列
* む　　をエンター (Lからの相対位置を各環境でそろえる)
* ろ　　を右シフト (?からの相対位置を各環境でそろえる)
* 変換　をバッククオート＆チルダ
* 半角/全角 を ESC
* CTRL+J を ESC
* SandC(Space and Control)

## Windows Bootcamp on Macbook US Keyboard

* のどか 設定ファイル: mbus-104.nodoka  
* 右Win を バッククオート＆チルダ
* バッククオート＆チルダ を ESC
* CTRL+J を ESC
* CapsLock を 英数、英数を CapsLock
* SandC(Space and Control)

## Google IME

* Windows用設定ファイル: gime-keymap-esc.txt
* どんな状態でもEscで無変換状態にする。vi のために
* ツール、プロパティ、一般、キー設定の選択「カスタム」を選んで編集ボタンを押す
* 左下の編集ボタンを押してインポートを選ぶ

## macOS Siera on Macbook US Keyboard

* 未解決
* Karabinier-elements を調査すべし
* 右Alt を バッククオート＆チルダ
* バッククオート＆チルダ を ESC
* SandC(Space and Control)
* CapsLock での IME制御をどうするか？を検討すべき

