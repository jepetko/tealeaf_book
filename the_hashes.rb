# Exercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

my_family = family.select {|key, value| key == :sisters || key == :brothers}
p my_family
my_family = my_family.values.flatten
p my_family