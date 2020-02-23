class RubiksAlgorithm {
  String image;
  String steps;
  String name;
  int cubeSize;

  RubiksAlgorithm(
      this.image,
      this.steps,
      this.name,
      this.cubeSize
  );
}

class RubiksAlgosData {
  static final algorithms = <RubiksAlgorithm>[
    new RubiksAlgorithm(
        'images/cube2x2x2/oll1.png',
        "R2 U2 R' U2 R'2",
        'OLL 1',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll2.png',
        "F R U R' U' R U R' U' F'",
        'OLL 2',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll3.png',
        "F R U R' U' F'",
        'OLL 3',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll4.png',
        "R U R' U' R' F R F'",
        'OLL 4',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll5.png',
        "F R' F' R U R U' R'",
        'OLL 5',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll6.png',
        "R U'2 R' U' R U' R'",
        'OLL 6',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/oll7.png',
        "R U R' U R U'2 R'",
        'OLL 7',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/alg1.png',
        "R U2 R' U' R U2 L' U R' U' L",
        'ALG 1',
        2
    ),
    new RubiksAlgorithm(
        'images/cube2x2x2/alg2.png',
        "R U' R' U' F2 U' R U R' U F2",
        'ALG 2',
        2
    ),
    new RubiksAlgorithm(
        'images/cube3x3x3/done.png',
        "You know the steps",
        'Easy',
        3
    ),
    new RubiksAlgorithm(
        'images/cube4x4x4/parity1.png',
        "Rw2 B2 U2 Lw U2 Rw' U2 Rw U2 F2 Rw F2 Lw' B2 Rw2",
        'Parity 1',
        4
    ),
    new RubiksAlgorithm(
        'images/cube4x4x4/edge1.png',
        "Dw D' R U R' F R' F' R Dw' D",
        'Edge',
        4
    ),
    new RubiksAlgorithm(
        'images/cube4x4x4/corners.png',
        "Rw2 R'2 U2 Rw2 R'2 Uw2 Rw2 R'2 Uw2",
        'Corners',
        4
    ),
    new RubiksAlgorithm(
        'images/cube5x5x5/parity1.png',
        "Rw2 B2 U2 Lw U2 Rw' U2 Rw U2 F2 Rw F2 Lw' B2 Rw2",
        'Parity 1',
        5
    ),
    new RubiksAlgorithm(
        'images/cube6x6x6/parity1.png',
        "2-3Rw' U2 2-3Lw F2 2-3Lw' F2 2-3Rw2 U2 2-3Rw U2 2-3Rw' U2 F2 2-3Rw2 F2",
        'Parity 1',
        6
    ),
    new RubiksAlgorithm(
        'images/cube6x6x6/parity2.png',
        "2R' U2 2L F2 2L' F2 2R2 U2 2R U2 2R' U2 F2 2R2 F2",
        'Parity 2',
        6
    ),
    new RubiksAlgorithm(
        'images/cube6x6x6/parity3.png',
        "3R' U2 3L F2 3L' F2 3R2 U2 3R U2 3R' U2 F2 3R2 F2",
        'Parity 3',
        6
    ),
  ];
}
