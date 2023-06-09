puts a = b = 100
puts a*100
puts b # これは100のまま
puts "オブチェクトIDをチェック"
puts a.object_id
puts b.object_id # IDは同じなんだ... → イミュータブルだからだった。

puts c = d = 'hello'
puts c.upcase!
puts c
puts d # これは大文字になってしまう
puts "オブチェクトIDをチェック"
puts c.object_id
puts d.object_id # IDは同じ

# メソッドの定義 p42
def add(a, b)
    a+b
end
# クラスを実行するときはputs使わないよな、ファイル自体の実行はどうやるんだ？ →出力したいものだけputsすんのか。
puts add(5,2)

# ヒアドキュメント
# TODO -　をつけた場合とそうでなかった場合の違いがよくわからない
a = <<TXT
これはヒアドキュメントです。
改行もいけるらしいです。
TXT
puts a

b = <<-TXT
これはヒアドキュメント3です。
あああ
TXT
puts b

def some_method
    <<-TXT
    これはヒアドキュメント2です。
    改行もいけるらしいです。
    TXT
end
puts some_method

# エンドレスメソッド定義 →使える 3.1だからか？
def greet = 'Hello!'
puts greet

# sumメソッド
chars = ['a', 'b', 'c']
puts chars.sum('') # 文字列の場合は初期値を設定しないとエラーになる
num = [1,2,4]
puts num.sum # 数値の場合は初期値がなくても動く
# join
puts num.join # 数値もto_sで文字列変換されてから連結される

# 添字付きブロック
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index {|fruit, i| puts "#{i}: #{fruit}"} # each_with_indexと同じ結果

# 番号指定パラメータ
['japan', 'us', 'italy'].map.with_index{|country,n| [n,country]} # 配列とwith_indexの変数を2つ||内で宣言している
['japan', 'us', 'italy'].map.with_index{[_2, _1]} # 番号指定パラメータを使うと変数宣言がいらなくなる

# キーワード引数の ...
def foo(a, ...) # 第一引数だけ取り出して
    bar(a*100, ...) # 別処理をすることができる
end

def bar(a, b, c: 1)
    puts "a=#{a}, b=#{b}, c=#{c}"
end

puts foo(10, 20, c: 30) # a=1000, b=20, c=30

# 以下も第一引数とみなされてしまう
def foo(b, ...) # 第一引数だけ取り出して
    bar(b*100, ...) # 別処理をすることができる
end

# こうすれば第二引数を取り出したことになる（書き方正しいかは？）
def foo(a, b, ...)
    bar(a, b*100, ...)
end