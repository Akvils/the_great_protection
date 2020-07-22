class SuttaModel {
  final int id;
  final String title;
  final String purpose;
  final double duration;

  SuttaModel({this.id, this.title, this.purpose, this.duration});

  static List<SuttaModel> list = [
    SuttaModel(
      id: 0,
      title: "Parita Parikamma",
      purpose: "Preliminary of Paritta",
      duration: 3.47,
    ),
    SuttaModel(
      id: 1,
      title: "Maṅgala Sutta",
      purpose: "Blessings and prosperity",
      duration: 3.49,
    ),
    SuttaModel(
      id: 2,
      title: "Ratana Sutta",
      purpose:
          "Getting free from dangers caused by disease, evil spirits and famine",
      duration: 7.16,
    ),
    SuttaModel(
      id: 3,
      title: "Mettā Sutta",
      purpose: "Suffusing all kinds of beings with loving-kindness",
      duration: 2.58,
    ),
    SuttaModel(
      id: 4,
      title: "Khandha Sutta",
      purpose: "Protecting against snakes and other creatures",
      duration: 1.45,
    ),
    SuttaModel(
      id: 5,
      title: "Mora Sutta",
      purpose: "Protection against snares, imprisonment and for safety",
      duration: 1.54,
    ),
    SuttaModel(
      id: 6,
      title: "Vaṭṭa Sutta",
      purpose: "Protection against fire",
      duration: 1.21,
    ),
    SuttaModel(
      id: 7,
      title: "Dhajagga Sutta",
      purpose: "Protection against fear, trembling and horror",
      duration: 8.26,
    ),
    SuttaModel(
      id: 8,
      title: "Āṭānāṭiya Sutta",
      purpose:
          "Protection against evil spirits, and gaining health and happiness",
      duration: 5.10,
    ),
    SuttaModel(
      id: 9,
      title: "Aṅgulimāla Sutta",
      purpose: "Easy delivery for expectant mothers",
      duration: 0.56,
    ),
    SuttaModel(
      id: 10,
      title: "Bojjhaṅga Sutta",
      purpose: "Protection against from sickness and disease",
      duration: 2.23,
    ),
    SuttaModel(
      id: 11,
      title: "Pubbaṇha Sutta",
      purpose: "Protection against bad omens and gaining happiness",
      duration: 4.35,
    )
  ];
}
