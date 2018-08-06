user = User.create(name: "Phuc", phone: "123123123", email: "phuc1@gmail.com", address: "Hai Duong", stk: "123123", account: "Phuc", password: "123123", password_confirmation: "123123", role: "customer")
user.save
home = Home.create(user_id: 1,address:"Ha Noi", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
home = Home.create(user_id: 1,address:"Hai Phong", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
home = Home.create(user_id: 2,address:"Bac Giang", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
room = Room.create(name: "P_402", area: 12, number_room: 2, state: "trống", price: "20tr", description: "vl")
room.save
