class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    Joop(text: 'Germany', isBool: false),
    Joop(text: 'Finland', isBool: false),
    Joop(text: 'France', isBool: true),
    Joop(text: 'Italy', isBool: false),
  ],
);

const Suroo s2 = Suroo(
  text: 'Bern',
  image: 'BernSwitzerland',
  jooptor: [
    Joop(text: 'Russia', isBool: false),
    Joop(text: 'Switherland', isBool: true),
    Joop(text: 'England', isBool: false),
    Joop(text: 'Spain', isBool: false),
  ],
);

const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'BruselBelgium',
  jooptor: [
    Joop(text: 'Makedonia', isBool: false),
    Joop(text: 'Portugal', isBool: false),
    Joop(text: 'Albania', isBool: false),
    Joop(text: 'Belgium', isBool: true),
  ],
);

const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'CopenhagenDenmark',
  jooptor: [
    Joop(text: 'Denmark', isBool: true),
    Joop(text: 'Ukrain', isBool: false),
    Joop(text: 'Poland', isBool: false),
    Joop(text: 'Norway', isBool: false),
  ],
);

const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    Joop(text: 'Germany', isBool: true),
    Joop(text: 'Sweden', isBool: false),
    Joop(text: 'Greece', isBool: false),
    Joop(text: 'Turkey', isBool: false),
  ],
);

List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
