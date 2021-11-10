names = %w(佐藤太郎 鈴木次郎 高橋花子)

0.upto(2) do |idx|
    Friend.create(
        name: names[idx]
    )
end