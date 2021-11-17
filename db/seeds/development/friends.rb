%w(佐藤太郎 鈴木次郎 高橋花子).each do |name|
    Friend.create(
        name: name
    )
end
