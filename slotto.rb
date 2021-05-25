puts "------------------"
puts "今日こそは・・・勝つ！！！"
p "あなたはカジノに足を踏み入れました。"

puts "------------------"
coin = 100
point = 0
puts "残りコイン枚数#{coin}枚"
puts "ポイント#{point}"

loop do

 puts "何コイン入れますか？"
 bets = ["10","30","50"]
 puts "0(#{bets[0]}コイン)1(#{bets[1]}コイン)2(#{bets[2]}コイン)3(やめとく)"
 bet_choose = gets.to_i
 
 if bet_choose == 3
   puts "------------------"
   puts "時には引き際も大切だ・・・"
   p "あなたはカジノを後にしました。"
   puts "------------------"
   puts "今回のゲームの結果はコインが残り#{coin}コイン、ポイントが#{point}ポイントでした!"
   puts "------------------"
  break
  
  #ベットするコインが現在のコインより低い場合
  elsif coin.to_i < bets[bet_choose].to_i
   puts "------------------"
   puts "コインが足りない・・・"
   p "あなたはカジノのガードマンにカジノを追い出されました。"
   puts "------------------"
   puts "今回のゲームの結果はコインが残り#{coin}コイン、ポイントが#{point}ポイントでした!"
   puts "------------------"
   break
 end
 
 #スロットの処理
 puts "------------------"
 puts "あなたは#{bets[bet_choose]}コインを入れました！"
 coin = coin - bets[bet_choose].to_i
 puts "現在のコインは#{coin}コインです"

 puts "エンターを3回押しましょう！" 
 slotto_nam1 = rand(9)
 slotto_nam2 = rand(9)
 slotto_nam3 = rand(9)
 slotto_nam4 = rand(9)
 slotto_nam5 = rand(9)
 slotto_nam6 = rand(9)
 slotto_nam7 = rand(9)
 slotto_nam8 = rand(9)
 slotto_nam9 = rand(9)
 
 enter = gets
 puts "------------------"
 puts "|#{slotto_nam1}|||"
 puts "|#{slotto_nam2}|||"
 puts "|#{slotto_nam3}|||"
 enter = gets
 puts "------------------"
 puts "|#{slotto_nam1}|#{slotto_nam4}||"
 puts "|#{slotto_nam2}|#{slotto_nam5}||"
 puts "|#{slotto_nam3}|#{slotto_nam6}||"
 enter = gets
 puts "------------------"
 puts "|#{slotto_nam1}|#{slotto_nam4}|#{slotto_nam7}|"
 puts "|#{slotto_nam2}|#{slotto_nam5}|#{slotto_nam8}|"
 puts "|#{slotto_nam3}|#{slotto_nam6}|#{slotto_nam9}|"
 puts "------------------"
 #上の列の数字が揃った場合の処理
 if (slotto_nam1 == slotto_nam4) && (slotto_nam4 == slotto_nam7)
    puts "上の列が揃ったぞ！おめでとう！"
    puts "#{bets[bet_choose].to_i * 2}枚のコインをGET!"
    puts "100ポイントGET"
    coin = coin + bets[bet_choose].to_i * 2
    point = point + 100
    puts "現在のコインは#{coin}です"
    puts "現在のポイントは#{point}です"
    puts "------------------"
  #真ん中の数字が全て7だった場合の処理
  elsif slotto_nam2 == 7 && slotto_nam5 == 7 && slotto_nam8 == 7
    puts "ラッキーセブン！！！"
    puts "#{bets[bet_choose].to_i * 5}枚のコインをGET!"
    puts "500ポイントGET"
    coin = coin + bets[bet_choose].to_i * 2
    point = point + 500
    puts "現在のコインは#{coin}です"
    puts "現在のポイントは#{point}です"
    puts "------------------"
   #真ん中の数字が揃った場合の処理 
  elsif (slotto_nam2 == slotto_nam5) && (slotto_nam5 == slotto_nam8)
    puts "真ん中の列が揃ったぞ！おめでとう！"
    puts "#{bets[bet_choose].to_i * 2}枚のコインをGET!"
    puts "100ポイントGET!"
    coin = coin + bets[bet_choose].to_i * 2
    point = point + 100
    puts "現在のコインは#{coin}です"
    puts "現在のポイントは#{point}です"
    puts "------------------"
   #下の列の数字が揃った場合の処理  
  elsif (slotto_nam3 == slotto_nam6) && (slotto_nam6 == slotto_nam9)
    puts "下の列が揃ったぞ！おめでとう！"
    puts "#{bets[bet_choose].to_i * 2}枚のコインをGET!"
    puts "100ポイントGET"
    coin = coin + bets[bet_choose].to_i * 2
    point = point + 100
    puts "現在のコインは#{coin}です"
    puts "現在のポイントは#{point}です"
    puts "------------------"
  else
    puts "残念！"
    puts "現在のコインは#{coin}枚です"
    puts "現在のポイントは#{point}ポイントです"
  end
end

#数字が揃った時はベットしたコインの2倍が加算され、ポイントが100増えます。
#真ん中の数字が全て7だった場合ベットした菌の5倍が加算され、ポイントが500増えます。