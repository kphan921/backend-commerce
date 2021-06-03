User.destroy_all
Order.destroy_all
Item.destroy_all
Review.destroy_all


u1 = User.create(username: "bob", password: "aaaa")
u2 = User.create(username: "kai", password: "12345")
u3 = User.create(username: "kim", password: "abcde")




Item.create(name: "EOS R5 Canon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/canon_eos_r5_mirrorless_digital_1594282826_1547009.jpg")
Item.create(name: "EOS R6 Canon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/canon_eos_r6_mirrorless_digital_1594281159_1547010.jpg")
Item.create(name: "EOS 5D Mark IV Canon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/canon_eos_5d_mark_iv_1561852319_1274705.jpg")
Item.create(name: "EOS 6D Mark II Canon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/canon_eos_6d_mark_ii_1561852319_1346734.jpg")
Item.create(name: "EOS 80D Canon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/canon_1263c004_eos_80d_dslr_camera_1455749513_1225875.jpg")
Item.create(name: "Z 7II Nikon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/nikon_z_7_ii_mirrorless_1602636707_1597168.jpg")
Item.create(name: "D850 Nikon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/nikon_d850_dslr_camera_body_1503543023_1351688.jpg")
Item.create(name: "Z50 Nikon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/nikon_1634b_z_50_mirrorless_digital_1602496214_1597960.jpg")
Item.create(name: "D3500 Nikon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/nikon_d5600_dslr_camera_body_1483534103_1308818.jpg")
Item.create(name: "D6 Nikon", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/nikon_d6_dslr_camera_body_1581510285_1515330.jpg")
Item.create(name: "a7 III Sony", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/sony_ilce_7m3_alpha_a7_iii_mirrorless_1519677934_1394217.jpg")
Item.create(name: "a7c Sony", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/sony_ilce7c_s_sony_alpha_a7c_mirrorless_1600118443_1594029.jpg")
Item.create(name: "a7R IV Sony", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/sony_ilce7rm4_b_alpha_a7r_iv_mirrorless_1563273968_1494679.jpg")
Item.create(name: "a7S III Sony", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/sony_ilce7sm3_b_alpha_a7s_iii_mirrorless_1595930779_1577838.jpg")
Item.create(name: "a1 Sony", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/sony_ilce_1_b_alpha_a1_mirrorless_digital_1611656508_1619483.jpg")
Item.create(name: "X-Pro3 Fujifilm", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/fujifilm_16641090_x_pro3_mirrorless_digital_camera_1571910379_1511705.jpg")
Item.create(name: "X-T4 Fujifilm", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/fujifilm_16652867_x_t4_mirrorless_digital_camera_1582674773_1548392.jpg")
Item.create(name: "X-T30 Fujifilm", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/fujifilm_x_t30_mirrorless_digital_camera_1550136983_1459274.jpg")
Item.create(name: "X-S10 Fujifilm", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/fujifilm_x_s10_mirrorless_digital_camera_1602755240_1597411.jpg")
Item.create(name: "X-E4 Fujifilm", price: rand(1000..3000), image: "https://static.bhphoto.com/images/images500x500/fujifilm_16673885_x_e4_mirrorless_digital_camera_1611737492_1618885.jpg")




Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)
Order.create(user_id: User.ids.sample, item_id: Item.ids.sample)



50.times do 
    Review.create(text: "Great product", user_id: User.ids.sample, item_id: Item.ids.sample)
end