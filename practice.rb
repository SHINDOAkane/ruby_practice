puts a = b = 100
puts a*100
puts b # これは100のまま
puts "オブチェクトIDをチェック"
puts a.object_id
puts b.object_id # IDは同じなんだ...

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


