#seed


20.times do
    Item.create(name: Faker::Games::Minecraft.item, value: Faker::Number.between(from: 1, to: 10))
end