class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
      input_hand = gets.to_i
       while true do
        if input_hand == 0 || input_hand == 1 || input_hand == 2
            return input_hand
        else
          puts "0・1・2の数字を入力してください。"
          puts "0:グー"
          puts "1:チョキ"
          puts "2:パー"
          input_hand = gets.to_i
          return input_hand if input_hand == 0

end
end
end
end
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end
class Janken
  def pon(input_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
      if input_hand == enemy_hand
       puts "相手の手は#{janken[enemy_hand]}です。あいこです。"
        return true
  elsif (input_hand == 0 && enemy_hand == 1) || (input_hand == 1 && enemy_hand == 2) || (input_hand == 2 && enemy_hand == 0)
      puts "相手の手は#{janken[enemy_hand]}です。あなたの勝ちです。"
      return true
  else
      puts "相手の手は#{janken[enemy_hand]}です。あなたの負けです。"
      return true
end
end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
 while next_game do
  next_game = janken.pon(player.hand, enemy.hand)
end
