# Kotlin プログラミングのJVM実装を観察するツールセット

このリポジトリは Sapporo.apk #4 で Kotlin Coroutine についてプレゼンするため
kotlin Coroutineの動作を理解するために用意したツールセットです。

'''
make
'''

を実行すると、 kts -> class -> java の流れで kotlin のコードが java へ翻訳されます。

## install

kotlinc コンパイラを使います。下記の方法でインストールできます。

macOS
```
brew install kotlin
```

Windows
```
choco install kotlinc
```

kotlinc コンパイラを動かすにはOpenJDKも必要ですが
上記のコマンドで依存パッケージ扱いでインストールされます。

kotlin coroutine のjarも必要です。
mavenリポジトリやプロキシサイトから取得し、libフォルダに展開します。
観察したいコンパイラのバージョンとkotlinxのバージョンの組み合わせは注意して選びましょう。

https://mvnrepository.com/artifact/org.jetbrains.kotlinx/kotlinx-coroutines-core
https://jar-download.com/artifacts/org.jetbrains.kotlinx/kotlinx-coroutines-core

visual studio code で kotlin スクリプトを動かしながらソースを作ると作業がはかどります。

macOS
```
brew cask install visual-studio-code
```

Windows
```
choco install VisualStudioCode
```

Code Runner という拡張機能を使えば、スクリプトを書いてすぐに実行できます。
kotlin coroutineをスクリプトで動かす場合はclass pathの設定が必要なので
settings.jsonを用意しておきます。

## kotlinコンパイル

kotlinc launch.kts -include-runtime -cp lib/kotlinx-coroutines-core-1.2.0.jar

Working with the Command Line Compiler
https://kotlinlang.org/docs/tutorials/command-line.html

## JVMアセンブリ出力

javap -c Launch.class > Launch.as
javap -c Launch$1.class > Launch$1.as

javap コマンド
https://docs.oracle.com/javase/jp/7/technotes/tools/windows/javap.html

Javaバイトコード 命令セット
https://en.wikipedia.org/wiki/Java_bytecode_instruction_listings

## javaデコンパイル

java -jar decompiler/cfr-0.143.jar Launch.class --extraclasspath .\lib > Launch.java
java -jar decompiler/cfr-0.143.jar Launch$1.class --extraclasspath .\lib > Launch$1.java

デコンパイルツール
https://www.benf.org/other/cfr/

## メモ

ktsファイル名の先頭のASCII文字は大文字にしないと
makefileの記述の都合でデコンパイルに失敗してしまいます。
