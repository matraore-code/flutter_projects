// class socialink {
//   late var whatsapp;
//   late var instagram;
//   late var linkedin;
//   late var twitter;
//   late var facebook;
//   late var tiktok;
//   socialink(this.facebook, this.instagram, this.linkedin, this.tiktok,
//       this.twitter, this.whatsapp);
// }

class CardModel {
  var firstName;
  var lastName;
  var email;
  var phone;
  var logo;
  var imageProfile;
  var bio;
  var title;
  var entreprise;
  var bgColor;
  CardModel(
    this.bio,
    this.email,
    this.entreprise,
    this.firstName,
    this.imageProfile,
    this.lastName,
    this.logo,
    this.phone,
    this.title,
    this.bgColor
  );
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['bio'],
        item['email'],
        item['entreprise'],
        item['firsName'],
        item['imageProfile'],
        item['lastName'],
        item['logo'],
        item['phone'],
        item['title'],
        item['bgColor']
      ),
    )
    .toList();

var cardData = [
  {
    "bio": "Student porteur de projet b-carte",
    "email": "mamadou.moctatra@gmail.com",
    "entreprise": "1337",
    "firstName": "Mamadou Moctar",
    "imageProfile": "assets/images/profile.jpeg",
    "lastName": "Traore",
    "logo": "assets/images/logon.png",
    "phone": "+212 696543240",
    "title": "Personal Card",
    "bgColor": "0xFFDCDCDC"
  },
  {
    "bio": "Student porteur de projet b-carte",
    "email": "mamadou.moctatra@gmail.com",
    "entreprise": "Startgate",
    "firstName": "Mamadou Moctar",
    "imageProfile": "assets/images/profile2.jpeg",
    "lastName": "Traore",
    "logo": "assets/images/logon.png",
    "phone": "+212 22222222",
    "title": "Work Card",
    "bgColor": "0xFFEC595A"
  },
];
