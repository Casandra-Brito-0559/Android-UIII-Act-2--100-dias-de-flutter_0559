class LeaderboardDetail {
  String image;
  String name;
  String rank;
  int point;

  LeaderboardDetail({
    required this.image,
    required this.name,
    required this.rank,
    required this.point,
  });
}

List<LeaderboardDetail> userItems = [
  LeaderboardDetail(
    image:
        "https://ca-times.brightspotcdn.com/dims4/default/df17c26/2147483647/strip/true/crop/2592x1458+0+975/resize/1200x675!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fba%2F46%2Fc26ba865450ab11a973230fbecae%2Fla-photos-handouts-la-ca-the-good-son-book-237.JPG",
    name: 'You-jeong jeong',
    rank: "4",
    point: 6432,
  ),
  LeaderboardDetail(
    image:
        "https://hips.hearstapps.com/hmg-prod/images/arturo-perez-reverte-juan-gomez-jurado-68245c5d730f0.jpg?crop=0.502xw:1.00xh;0,0&resize=640:*",
    name: 'Juan Gómez Jurado',
    rank: "5",
    point: 5232,
  ),
  LeaderboardDetail(
    image:
        "https://media.vogue.mx/photos/5fd4d92510ea4e104a917efc/2:3/w_1048,h_1572,c_limit/Gabriel-Garci%CC%81a-Ma%CC%81rquez-Pari%CC%81s-1900.jpg",
    name: 'García Márquez',
    rank: "6",
    point: 5200,
  ),
  LeaderboardDetail(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW7ut2YioFaL5USMqpvv4Cd30vqyitAJzFNg&s",
    name: 'Haruki Murakami',
    rank: "7",
    point: 4900,
  ),
  LeaderboardDetail(
    image:
        "https://letraslibres.com/wp-content/uploads/2016/05/entrevista-cane-460.jpg",
    name: 'Joyce carol oates',
    rank: "8",
    point: 4100,
  ),
];
