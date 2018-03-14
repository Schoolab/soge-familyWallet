# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = {
    email: "Gabriel@mail.com",
    password: 123456,
    first_name: "Gabriel",
    last_name: "Ibanez",
    adult: true,
}
gaby = User.create(user1)

Family.destroy_all
family1 = {
    name: "Ibanez",
    nb_of_member: 1,
}
family = Family.create(family1)

uf = UserFamily.create(user: gaby, family: family)

poche1 = {
  name: "Courses",
  value: 134.3,
}
poche = Poche.create(poche1)

fp = FamilyPoche.create(poche: poche, family: family)
