Actor.delete_all
Show.delete_all
Character.delete_all

peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
thrones = Show.create(name: "Game of Thrones")
tyrion = Character.create(name: "Tyrion Lannister", actor_id: peter.id, show_id: thrones.id)