# -*- coding: utf-8 -*-
# テーマ：与えられた配列を適当に並べ替えて２分割してください。
# 用途　：チームで昼飯を食いに行く会の組み合わせを決める
# 　　　　→あまり人数が多いと店に入れないので、
# 　　　　　10人前後の参加者をランダムに２組に分けたい

def shuffle(members)
  shuffled = members.shuffle
  first = shuffled.take(members.length / 2)
  second = shuffled - first
  [first, second]
end
