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

が理由だった。  
が、BackQuote と Esc の再配置が解決できず悩み続ける。

その後、Windows+remapped 109 で BackQuote の位置を妥協すれば、
各環境でほぼおなじにできることに気がついた。

BackQuote の解決とは非同期だが、Controlは右小指より左右親指が
より快適と思い最終的にSandCにした。  

副次的に気付かされたが、英数でIME Onと入力文字種選択ができるのは快適。
ただしこの動作はMS IMEとその動作を模したGoogle IMEが実施しているもの。
Google IMEでは、同じ場所のキーを109では英数、
104ではCapsLockとして扱い同じ動作とならない。  
dot.nodoka -DUSE104on109 でキーの挙動が変わるので、
のどかで動作変更する方法がありそう。だが見つけきれていない。

次善の策として、MacのWindows10の設定で109キーボードドライバを選び、
CapsLock以外のキーを再び104にするという方法をとったらうまくいった。

## Windows w/109 Keyboard

* のどか 設定ファイル: AXTCon109.nodoka  
* 109キーボードで101配列
* む　　をエンター (Lからの相対位置を各環境でそろえる)
* ろ　　を右シフト (?からの相対位置を各環境でそろえる)
* 変換　をバッククオート＆チルダ
* Esc と 半角/全角 を入れ替え (EscはTabの上)
* SandC(Space and Control)

## Windows Bootcamp on Macbook US Keyboard

* Windows 10 設定、言語、オプション、キーボードで109を選んで再ログオン
* のどか 設定ファイル: mbus-109.nodoka  
* 右Win を バッククオート＆チルダ
* Esc と バッククオート＆チルダ を入れ替え (EscはTabの上)
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
* Esc と バッククオート＆チルダ を入れ替え
* SandC(Space and Control)
* CapsLock　でIME制御をどうするか？
