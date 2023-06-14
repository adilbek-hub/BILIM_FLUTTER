class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({required this.text, required this.tuuraJoop});
  final String text;
  final bool tuuraJoop;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    joop(text: 'Germany', tuuraJoop: false),
    joop(text: 'Finland', tuuraJoop: false),
    joop(text: 'France', tuuraJoop: true),
    joop(text: 'Italy', tuuraJoop: false),
  ],
);

const Suroo s2 = Suroo(
  text: 'Bern',
  image: 'BernSwitzerland',
  jooptor: [
    joop(text: 'Russia', tuuraJoop: false),
    joop(text: 'Switherland', tuuraJoop: true),
    joop(text: 'England', tuuraJoop: false),
    joop(text: 'Spain', tuuraJoop: false),
  ],
);

const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'BruselBelgium',
  jooptor: [
    joop(text: 'Makedonia', tuuraJoop: false),
    joop(text: 'Portugal', tuuraJoop: false),
    joop(text: 'Albania', tuuraJoop: false),
    joop(text: 'Belgium', tuuraJoop: true),
  ],
);

const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'CopenhagenDenmark',
  jooptor: [
    joop(text: 'Denmark', tuuraJoop: true),
    joop(text: 'Ukrain', tuuraJoop: false),
    joop(text: 'Poland', tuuraJoop: false),
    joop(text: 'Norway', tuuraJoop: false),
  ],
);

const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    joop(text: 'Germany', tuuraJoop: true),
    joop(text: 'Sweden', tuuraJoop: false),
    joop(text: 'Greece', tuuraJoop: false),
    joop(text: 'Turkey', tuuraJoop: false),
  ],
);

List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
