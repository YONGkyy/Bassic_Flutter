List<MovieModel> movieList = [
  MovieModel(
    title:
        "Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan",
    image:
        "https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/03/borat.jpg?q=50&fit=crop&w=1500&dpr=1.5",
    des:
        "Borat, a Kazakh resident, travels to the USA to make a documentary on the country. While on his mission, he learns that the USA is the same as his own country in many ways.",
    rate: 7.4,
  ),
  MovieModel(
    title: "Transformers: Rise of the Beasts",
    image:
        "https://m.media-amazon.com/images/M/MV5BZTNiNDA4NmMtNTExNi00YmViLWJkMDAtMDAxNmRjY2I2NDVjXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UX1000_.jpg",
    des:
        "Optimus Prime and the Autobots take on their biggest challenge yet. When a new threat capable of destroying the entire planet emerges, they must team up with a powerful faction of Transformers known as the Maximals to save Earth.",
    rate: 6.1,
  ),
  MovieModel(
    title: "Heart of Stone",
    image:
        "https://www.heavenofhorror.com/wp-content/uploads/2023/08/heart-of-stone-netflix-review-1200x720.jpg",
    des:
        "Rachel Stone is an intelligence operative, the only woman who stands between her powerful global peacekeeping organization and the loss of its most valuable -- and dangerous -- asset.",
    rate: 5.7,
  ),
  MovieModel(
    title: "House for Rent",
    image: "https://i.ytimg.com/vi/db8puvbOhQw/maxresdefault.jpg",
    des:
        "When the tenants are members of a dark cult, they terrorize the homeowner, looking for their next prey to sacrifice.A film inspired by terrifying true events.",
    rate: 6.6,
  ),
  MovieModel(
    title: "Fast X",
    image: "https://i.ytimg.com/vi/aOb15GVFZxU/maxresdefault.jpg",
    des:
        "Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they've ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom's world and destroy everything -- and everyone -- he loves.",
    rate: 5.8,
  ),
  MovieModel(
    title: "Resident Evil: Death Island",
    image:
        "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/06/resident-evil-death-island-social-feature.jpg",
    des:
        "Agent Chris Redfield and his team investigate a zombie outbreak in San Francisco. They follow a clue that leads them to Alcatraz Island, where a new horror awaits them.",
    rate: 5.7,
  ),
  MovieModel(
    title: "Monkey King",
    image:
        "https://m.media-amazon.com/images/M/MV5BNWZhZjUxZGUtMzM1OC00MjdmLWIzZjUtZTUzODc2ZTI2YzQzXkEyXkFqcGdeQXVyMDc5ODIzMw@@._V1_FMjpg_UX1000_.jpg",
    des:
        "The Monkey King is a 2023 computer-animated fantasy action comedy film inspired by the classic Ming dynasty novel Journey to the West. Directed by Anthony Stacchi, the film stars Jimmy O. Yang voicing over the role of the titular trickster who battles the Dragon King.",
    rate: 5.8,
  ),
  MovieModel(
    title: "Hidden Strike",
    image:
        "https://www.goldderby.com/wp-content/uploads/2023/08/Hidden-Strike.jpg?w=620",
    des: "",
    rate: 4.5,
  ),
  MovieModel(
    title: "Spider-man: Multiverse",
    image:
        "https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg",
    des:
        "Two former soldiers face nonstop danger as they travel along one of the most dangerous roads in the world.",
    rate: 5.3,
  ),
];

class MovieModel {
  String title; 
  String des;
  String image;
  double rate;

  MovieModel({
    this.title = "no title",
    this.des = "no des",
    this.image = "no image",
    this.rate = 0.0,
  });
}
