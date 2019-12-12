source = 
[{:name=>"Stephen Spielberg",
  :movies=>
   [{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977},
    {:title=>"Raiders of the Lost Ark",
     :studio=>"Paramount",
     :worldwide_gross=>248159971,
     :release_year=>1981},
    {:title=>"E.T. the Extra-terrestrial",
     :studio=>"Universal",
     :worldwide_gross=>435110554,
     :release_year=>1982},
    {:title=>"Schindler's List",
     :studio=>"Universal",
     :worldwide_gross=>96898818,
     :release_year=>1993},
    {:title=>"Lincoln",
     :studio=>"Buena Vista",
     :worldwide_gross=>182207973,
     :release_year=>2012}]},
 {:name=>"Russo Brothers",
  :movies=>
   [{:title=>"Avengers Endgame",
     :studio=>"Buena Vista",
     :worldwide_gross=>858371337,
     :release_year=>2019},
    {:title=>"Avengers Infinity War",
     :studio=>"Buena Vista",
     :worldwide_gross=>678815482,
     :release_year=>2018},
    {:title=>"Captain America Civil War",
     :studio=>"Buena Vista",
     :worldwide_gross=>408084349,
     :release_year=>2016},
    {:title=>"Captain America The Winter Soldier",
     :studio=>"Buena Vista",
     :worldwide_gross=>259766572,
     :release_year=>2014},
    {:title=>"You, Me and Dupree",
     :studio=>"Universal",
     :worldwide_gross=>75628110,
     :release_year=>2006},
    {:title=>"Welcome to Collinwood",
     :studio=>"Warner Brothers",
     :worldwide_gross=>336620,
     :release_year=>2002}]}
]

movies_collection =
[[{:title=>"Jaws",
   :worldwide_gross=>260000000,
   :release_year=>1975,
   :studio=>"Universal",
   :director_name=>"Stephen Spielberg"},
  {:title=>"Close Encounters of the Third Kind",
   :worldwide_gross=>135189114,
   :release_year=>1977,
   :studio=>"Columbia",
   :director_name=>"Stephen Spielberg"},
  {:title=>"Raiders of the Lost Ark",
   :worldwide_gross=>248159971,
   :release_year=>1981,
   :studio=>"Paramount",
   :director_name=>"Stephen Spielberg"},
  {:title=>"E.T. the Extra-terrestrial",
   :worldwide_gross=>435110554,
   :release_year=>1982,
   :studio=>"Universal",
   :director_name=>"Stephen Spielberg"},
  {:title=>"Schindler's List",
   :worldwide_gross=>96898818,
   :release_year=>1993,
   :studio=>"Universal",
   :director_name=>"Stephen Spielberg"},
  {:title=>"Lincoln",
   :worldwide_gross=>182207973,
   :release_year=>2012,
   :studio=>"Buena Vista",
   :director_name=>"Stephen Spielberg"}],
 [{:title=>"Avengers Endgame",
   :worldwide_gross=>858371337,
   :release_year=>2019,
   :studio=>"Buena Vista",
   :director_name=>"Russo Brothers"},
  {:title=>"Avengers Infinity War",
   :worldwide_gross=>678815482,
   :release_year=>2018,
   :studio=>"Buena Vista",
   :director_name=>"Russo Brothers"},
  {:title=>"Captain America Civil War",
   :worldwide_gross=>408084349,
   :release_year=>2016,
   :studio=>"Buena Vista",
   :director_name=>"Russo Brothers"},
  {:title=>"Captain America The Winter Soldier",
   :worldwide_gross=>259766572,
   :release_year=>2014,
   :studio=>"Buena Vista",
   :director_name=>"Russo Brothers"},
  {:title=>"You, Me and Dupree",
   :worldwide_gross=>75628110,
   :release_year=>2006,
   :studio=>"Universal",
   :director_name=>"Russo Brothers"},
  {:title=>"Welcome to Collinwood",
   :worldwide_gross=>336620,
   :release_year=>2002,
   :studio=>"Warner Brothers",
   :director_name=>"Russo Brothers"}]]

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end

def movies_with_director_key(name, movies_collection)
  result = []
  movies_index = 0
  while movies_index < movies_collection.length do
    result << movie_with_director_name(name, movies_collection[movies_index])
    movies_index += 1
  end
  result
end

def movies_with_directors_set(source)
  result = []
  source_index = 0
  while source_index < source.length do
    director_hash = source[source_index]
    current_director = source[source_index][:name]
    current_director_movies = source[source_index][:movies]
    result << movies_with_director_key(current_director, current_director_movies)
    source_index += 1
  end
  result
end

# pp movies_with_directors_set(source)
pp movies_with_director_key("Stephen Spielberg", movies_collection)




# def movies_with_directors_set(source)
#   result = []
#   director_hash = {}
#   source_index = 0
#   while source_index < source.length do
#     current_director = source[source_index][:name]
#     director_hash[current_director] = source[source_index][:movies]
#     result << director_hash
#     source_index += 1
#   end
#   result
# end

# collection_spielberg = 
# [   {:title=>"Jaws",
#     :studio=>"Universal",
#     :worldwide_gross=>260000000,
#     :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#     :studio=>"Columbia",
#     :worldwide_gross=>135189114,
#     :release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#     :studio=>"Paramount",
#     :worldwide_gross=>248159971,
#     :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#     :studio=>"Universal",
#     :worldwide_gross=>435110554,
#     :release_year=>1982},
#     {:title=>"Schindler's List",
#     :studio=>"Universal",
#     :worldwide_gross=>96898818,
#     :release_year=>1993},
#     {:title=>"Lincoln",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>182207973,
#     :release_year=>2012}
# ]

# def gross_per_studio(collection)
#   final_hash = {}
#   movies_index = 0
#   while movies_index < collection.length do
#     current_studio = collection[movies_index][:studio]
#     if !final_hash[current_studio]
#       final_hash[current_studio] = collection[movies_index][:worldwide_gross]
#     else
#       final_hash[current_studio] += collection[movies_index][:worldwide_gross]
#     end
#     movies_index += 1
#   end
#   final_hash
# end

# p gross_per_studio(collection_spielberg)