require "csv"

loop do
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "-拡張子を除いたファイル名を入力してください-"
  file_name = gets.chomp!
  puts "-メモしたい内容を記入してください-"
  puts "-完了したらCtrl + Dを押してください-"
  File.open("#{file_name}.csv", "w") do |memo|
  memo_contents = readlines
  memo << memo_contents
  end
  break
  
elsif memo_type == 2
  puts "-拡張子を除いたファイル名を入力してください-"
  file_name = gets.chomp!
  puts "-メモしたい内容を記入してください-"
  puts "-完了したらCtrl + Dを押してください-"
  File.open("#{file_name}.csv", "a") do |memo|
  memo_contents = readlines
  memo << memo_contents
  end
  break

else
  puts "エラー。1か2を選択してください"
end
end

 puts "\ncomplete!"