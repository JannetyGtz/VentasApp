# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t1= Store.create(name: "Charritos", address: "Calle del Rayo 1452", phone: "6495265058") 
User.create(name: "charro", email: "charro@hotmail.com", password: "charro1", cellphone: "6495265078",store_id: 1)
User.create(name: "ludi", email: "ludi@hotmail.com", password: "ludi1", cellphone: "6495265123", store_id: 1)
User.create(name: "ebodio", email: "ebodio@hotmail.com", password: "ebodio1", cellphone: "6295265078",store_id: 1)

t2 = Store.create(name: "Luises", address: "Calle 61 25 #2", phone: "6495265036") 
User.create(name: "tata", email: "tata@hotmail.com", password: "tata1", cellphone: "6495265045", store_id: 2)
User.create(name: "pelon", email: "pelon@hotmail.com", password: "pelon1", cellphone: "6495265023",store_id: 2) 
User.create(name: "maria", email: "maria@hotmail.com", password: "maria", cellphone: "6495265047",store_id: 2)

t3 = Store.create(name: "Conasupo", address: "Carrera 14 45", phone: "6495265042")
User.create(name: "chapito", email: "chapito@hotmail.com", password: "chapito1", cellphone: "6495265014", store_id: 3)

t4 = Store.create(name: "Prueba", address: "Bogota", phone: "6495265014")
User.create(name: "Jannety", email: "jannetygtz@live.com", password: "jannety1", cellphone: "6495265020", role: "Administrador", store_id: 4)
User.create(name: "Ivan", email: "pablo-h-dz@hotmail.com", password: "ivan1", cellphone: "6495265020",role: "Administrador", store_id: 4)