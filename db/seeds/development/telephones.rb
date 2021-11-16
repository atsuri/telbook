Friend.all.each do |friend|
    %w(33311112222 66677778888).each do |num|
        Telephone.create(
            friend_id: friend.id,
            number: num
        )
    end
end
