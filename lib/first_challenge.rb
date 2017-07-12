def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |name, data|
    if name == "Freddy Mercury"
      data.each do |field, value|
        if field == :favorite_icecream_flavors
          value.each do
            value.delete_if{ |value| value == "strawberry" }
          end
        end
      end
    end
  end
  contacts
end
