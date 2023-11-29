# README

a) Niveau facile
Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?
347 : Album.all.count

Qui est l'auteur de la chanson "White Room" ?
Eric Claption : Track.where(title: "White Room")

Quelle chanson dure exactement 188133 milliseconds ?
Alanis Morissette : Track.where(duration: 188133)

Quel groupe a sorti l'album "Use Your Illusion II" ?
Album.where(title: "Use Your Illusion II")

b) Niveau Moyen
Combien y a t'il d'albums dont le titre contient "Great" ? (indice)

Albume.where("title like ?", "%Great%")

Supprime tous les albums dont le nom contient "music".

music_array = Album.where("title like ?", "%music%")
music_array.each do |t| t.destroy end

Combien y a t'il d'albums écrits par AC/DC ?

Album.where(artist: "AC/DC").count

Combien de chanson durent exactement 158589 millisecondes ?

Track.where(duration: 158589).count

c) Niveau Difficile
Pour ces questions, tu vas devoir effectuer des boucles dans la console Rails. C'est peu commun mais c'est faisable, tout comme dans IRB.2
puts en console tous les titres de AC/DC.

count = 0
array_of_title = []
while count <= 554
  count += 1
  if Track.find(count).artist == "AC/DC"
  select_track = Track.find(count).title
  array_of_title << select_track
  else
  end
end
array_of_title

puts en console tous les titres de l'album "Let There Be Rock".

count = 0
array_of_title = []
while count <= 554
  count += 1
  if Track.find(count).album == "Let There Be Rock"
  select_track = Track.find(count).title
  array_of_title << select_track
  else
  end
end
array_of_title

Calcule le prix total de cet album ainsi que sa durée totale.

count = 0
array_of_price = []
array_of_duration = []
while count <= 554
  count += 1
  if Track.find(count).album == "Let There Be Rock"
  select_track = Track.find(count)
  array_of_duration << select_track.duration
  array_of_price << select_track.price
  else
  end
end
p array_of_price.sum, "prix total"
p array_of_duration.sum, "durée total" 

Calcule le coût de l'intégralité de la discographie de "Deep Purple".

count = 0
array_of_title = []
while count <= 554
  count += 1
  if Track.find(count).artist == "AC/DC"
  select_track = Track.find(count).price
  array_of_title << select_track
  else
  end
end
p array_of_title.sum, "prix total de l'album"

Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.

count = 0
array_of_title = []

Track.find(529)

while count <= 554
  count += 1
  if Track.find(count).artist == "Eric Clapton"
  select_track = Track.find(count)
  select_track.artist = "Britney Spears"
  select_track.save
  else
  end
end

Track.find(529)