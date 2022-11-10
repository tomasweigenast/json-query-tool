// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_query_tool/logic/json_query_context.dart';
import 'package:json_query_tool/views/editor_view.dart';

Future<void> main() async {
  
  JsonQueryContext.string(_kTest);
  await JsonQueryContext.current.loadCompleter.future;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light, 
          primary: Colors.indigo, 
          onPrimary: Colors.white, 
          secondary: Colors.amber, 
          onSecondary: Colors.black, 
          error: Colors.red, 
          onError: Colors.white, 
          background: Colors.white, 
          onBackground: Colors.black, 
          surface: Colors.white, 
          onSurface: Colors.black
        ),
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(GoogleFonts.robotoCondensed(fontSize: 16)),
            fixedSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder())            
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(GoogleFonts.robotoCondensed(fontSize: 16)),
            fixedSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder())            
          )
        )
      ),
      home: const EditorView(),
    );
  }
}

const _kTest = r'''
[
	{
		"name": "Travis Rodriquez",
		"phone": "(854) 344-2394",
		"email": "aenean.massa@google.ca",
		"country": "Canada",
		"region": "Vlaams-Brabant",
		"postalZip": "992815",
		"numberrange": 3,
		"currency": "$24.82"
	},
	{
		"name": "Reece Sanchez",
		"phone": "1-276-725-1539",
		"email": "dolor@google.couk",
		"country": "Vietnam",
		"region": "San Luis Potosí",
		"postalZip": "28716-72240",
		"numberrange": 9,
		"currency": "$46.70"
	},
	{
		"name": "Adrienne English",
		"phone": "(264) 498-0513",
		"email": "pellentesque.ultricies@google.org",
		"country": "Colombia",
		"region": "Utrecht",
		"postalZip": "15361",
		"numberrange": 8,
		"currency": "$12.87"
	},
	{
		"name": "Clarke Beard",
		"phone": "1-985-812-3145",
		"email": "nunc.sed@aol.com",
		"country": "United States",
		"region": "Languedoc-Roussillon",
		"postalZip": "2636",
		"numberrange": 4,
		"currency": "$77.80"
	},
	{
		"name": "Lana Levine",
		"phone": "(644) 778-1146",
		"email": "tellus.nunc@yahoo.com",
		"country": "Austria",
		"region": "Burgenland",
		"postalZip": "5648",
		"numberrange": 8,
		"currency": "$9.18"
	},
	{
		"name": "Jessica Castillo",
		"phone": "1-438-863-8676",
		"email": "donec@yahoo.com",
		"country": "Canada",
		"region": "Podkarpackie",
		"postalZip": "643128",
		"numberrange": 5,
		"currency": "$43.50"
	},
	{
		"name": "Alma Palmer",
		"phone": "(388) 188-5483",
		"email": "molestie.tortor.nibh@hotmail.edu",
		"country": "Pakistan",
		"region": "Bangsamoro",
		"postalZip": "4597",
		"numberrange": 4,
		"currency": "$81.91"
	},
	{
		"name": "Donna Jensen",
		"phone": "(633) 926-5728",
		"email": "non.dui.nec@icloud.ca",
		"country": "Colombia",
		"region": "Veracruz",
		"postalZip": "45886",
		"numberrange": 8,
		"currency": "$69.90"
	},
	{
		"name": "MacKenzie Robinson",
		"phone": "1-597-212-5506",
		"email": "velit@protonmail.ca",
		"country": "Netherlands",
		"region": "Balochistan",
		"postalZip": "20473",
		"numberrange": 4,
		"currency": "$71.76"
	},
	{
		"name": "Orla Adams",
		"phone": "1-638-775-1324",
		"email": "vivamus.rhoncus.donec@protonmail.net",
		"country": "Norway",
		"region": "North Gyeongsang",
		"postalZip": "326247",
		"numberrange": 5,
		"currency": "$8.64"
	},
	{
		"name": "Timothy Vang",
		"phone": "1-511-926-4119",
		"email": "enim@google.com",
		"country": "South Korea",
		"region": "Rogaland",
		"postalZip": "29508",
		"numberrange": 1,
		"currency": "$37.05"
	},
	{
		"name": "Reece Livingston",
		"phone": "(424) 461-0757",
		"email": "tempor.erat.neque@icloud.couk",
		"country": "United Kingdom",
		"region": "North West",
		"postalZip": "11-76",
		"numberrange": 7,
		"currency": "$8.88"
	},
	{
		"name": "Damon Edwards",
		"phone": "1-890-945-5138",
		"email": "bibendum.donec@icloud.org",
		"country": "South Africa",
		"region": "Southwestern Tagalog Region",
		"postalZip": "14029",
		"numberrange": 3,
		"currency": "$71.52"
	},
	{
		"name": "Camden Fowler",
		"phone": "(444) 120-5370",
		"email": "et@protonmail.com",
		"country": "Mexico",
		"region": "Oslo",
		"postalZip": "646012",
		"numberrange": 5,
		"currency": "$15.72"
	},
	{
		"name": "Harrison Mcconnell",
		"phone": "(258) 905-2617",
		"email": "mauris@google.com",
		"country": "Ireland",
		"region": "Sucre",
		"postalZip": "388692",
		"numberrange": 5,
		"currency": "$63.84"
	},
	{
		"name": "Phelan Hancock",
		"phone": "1-572-237-0471",
		"email": "at.velit@hotmail.net",
		"country": "Belgium",
		"region": "Rheinland-Pfalz",
		"postalZip": "8253 BL",
		"numberrange": 7,
		"currency": "$78.82"
	},
	{
		"name": "Myles Bruce",
		"phone": "(873) 534-3173",
		"email": "consequat.purus.maecenas@hotmail.org",
		"country": "Ukraine",
		"region": "Kogi",
		"postalZip": "32176",
		"numberrange": 2,
		"currency": "$21.72"
	},
	{
		"name": "Kim Watson",
		"phone": "(648) 665-1713",
		"email": "adipiscing.lobortis.risus@outlook.net",
		"country": "Ireland",
		"region": "İzmir",
		"postalZip": "653184",
		"numberrange": 5,
		"currency": "$97.21"
	},
	{
		"name": "Barrett Gould",
		"phone": "1-317-910-1403",
		"email": "sapien@icloud.com",
		"country": "Norway",
		"region": "İzmir",
		"postalZip": "12428",
		"numberrange": 7,
		"currency": "$69.98"
	},
	{
		"name": "Malcolm Palmer",
		"phone": "(950) 887-7664",
		"email": "ligula.aenean.euismod@aol.edu",
		"country": "Turkey",
		"region": "North Sumatra",
		"postalZip": "67751-377",
		"numberrange": 9,
		"currency": "$37.99"
	},
	{
		"name": "Clementine Levine",
		"phone": "(771) 844-1985",
		"email": "egestas.ligula@yahoo.org",
		"country": "China",
		"region": "Burgenland",
		"postalZip": "8181",
		"numberrange": 9,
		"currency": "$39.48"
	},
	{
		"name": "Lunea Hudson",
		"phone": "(237) 527-2423",
		"email": "odio@hotmail.edu",
		"country": "Australia",
		"region": "North West",
		"postalZip": "65120",
		"numberrange": 3,
		"currency": "$85.88"
	},
	{
		"name": "Aspen Stevenson",
		"phone": "(571) 441-3505",
		"email": "proin.eget@yahoo.couk",
		"country": "India",
		"region": "Maryland",
		"postalZip": "345688",
		"numberrange": 9,
		"currency": "$84.83"
	},
	{
		"name": "Unity Cooke",
		"phone": "(831) 837-1828",
		"email": "tincidunt.neque.vitae@protonmail.org",
		"country": "Sweden",
		"region": "Oslo",
		"postalZip": "754882",
		"numberrange": 3,
		"currency": "$65.45"
	},
	{
		"name": "Octavius Miles",
		"phone": "1-431-912-1871",
		"email": "aliquam.erat.volutpat@aol.ca",
		"country": "Canada",
		"region": "Western Cape",
		"postalZip": "NX3T 4ZQ",
		"numberrange": 9,
		"currency": "$56.29"
	},
	{
		"name": "Giselle Rodriguez",
		"phone": "(787) 624-2127",
		"email": "rutrum.non@google.com",
		"country": "Austria",
		"region": "Cartago",
		"postalZip": "7058",
		"numberrange": 8,
		"currency": "$63.61"
	},
	{
		"name": "McKenzie Adams",
		"phone": "1-761-233-9792",
		"email": "ligula.elit.pretium@aol.ca",
		"country": "Ukraine",
		"region": "Navarra",
		"postalZip": "3428 TZ",
		"numberrange": 8,
		"currency": "$11.39"
	},
	{
		"name": "Joshua Britt",
		"phone": "1-711-733-4778",
		"email": "luctus@yahoo.ca",
		"country": "Colombia",
		"region": "Papua",
		"postalZip": "84481",
		"numberrange": 1,
		"currency": "$59.48"
	},
	{
		"name": "Brynne Pruitt",
		"phone": "(667) 986-3194",
		"email": "eget.odio.aliquam@outlook.org",
		"country": "Mexico",
		"region": "Biobío",
		"postalZip": "25222",
		"numberrange": 1,
		"currency": "$18.60"
	},
	{
		"name": "Larissa Robinson",
		"phone": "(490) 864-2765",
		"email": "consectetuer.ipsum.nunc@hotmail.edu",
		"country": "Turkey",
		"region": "Trøndelag",
		"postalZip": "82419",
		"numberrange": 2,
		"currency": "$78.87"
	},
	{
		"name": "Destiny Fields",
		"phone": "1-528-688-7248",
		"email": "purus.maecenas@google.ca",
		"country": "South Korea",
		"region": "Maranhão",
		"postalZip": "4791",
		"numberrange": 6,
		"currency": "$36.03"
	},
	{
		"name": "Rosalyn Combs",
		"phone": "1-629-386-1565",
		"email": "amet@yahoo.net",
		"country": "Ireland",
		"region": "Nevada",
		"postalZip": "83662",
		"numberrange": 0,
		"currency": "$66.68"
	},
	{
		"name": "Echo Maldonado",
		"phone": "(291) 511-5288",
		"email": "est.mollis@google.net",
		"country": "China",
		"region": "Maharastra",
		"postalZip": "1209 PE",
		"numberrange": 4,
		"currency": "$62.97"
	},
	{
		"name": "Brian Browning",
		"phone": "(983) 323-4807",
		"email": "semper.rutrum@outlook.net",
		"country": "Belgium",
		"region": "łódzkie",
		"postalZip": "7652 OR",
		"numberrange": 2,
		"currency": "$28.84"
	},
	{
		"name": "Lisandra Lawson",
		"phone": "1-162-782-6673",
		"email": "lorem.ipsum@aol.couk",
		"country": "United Kingdom",
		"region": "San José",
		"postalZip": "20554",
		"numberrange": 5,
		"currency": "$41.28"
	},
	{
		"name": "Walker Yates",
		"phone": "(877) 714-7608",
		"email": "neque.pellentesque@aol.org",
		"country": "Australia",
		"region": "South Jeolla",
		"postalZip": "4524",
		"numberrange": 2,
		"currency": "$10.51"
	},
	{
		"name": "Winifred Guy",
		"phone": "(823) 213-4115",
		"email": "ut@protonmail.net",
		"country": "South Africa",
		"region": "La Libertad",
		"postalZip": "9814",
		"numberrange": 10,
		"currency": "$37.93"
	},
	{
		"name": "Raya Mayo",
		"phone": "1-626-414-6892",
		"email": "vitae.posuere@outlook.com",
		"country": "Nigeria",
		"region": "Osun",
		"postalZip": "17382",
		"numberrange": 4,
		"currency": "$86.46"
	},
	{
		"name": "Brendan Pickett",
		"phone": "(405) 472-2497",
		"email": "sed@yahoo.couk",
		"country": "Italy",
		"region": "Trentino-Alto Adige",
		"postalZip": "8637 QS",
		"numberrange": 5,
		"currency": "$24.45"
	},
	{
		"name": "Chastity French",
		"phone": "(983) 514-5466",
		"email": "nibh@aol.net",
		"country": "Poland",
		"region": "North Chungcheong",
		"postalZip": "9335",
		"numberrange": 4,
		"currency": "$74.50"
	},
	{
		"name": "Pascale Chavez",
		"phone": "(657) 342-5876",
		"email": "consectetuer.rhoncus@aol.com",
		"country": "Nigeria",
		"region": "Stockholms län",
		"postalZip": "762518",
		"numberrange": 10,
		"currency": "$61.79"
	},
	{
		"name": "Nayda Hurst",
		"phone": "(248) 466-3776",
		"email": "mi.ac@aol.edu",
		"country": "Poland",
		"region": "Delta",
		"postalZip": "71711",
		"numberrange": 1,
		"currency": "$92.32"
	},
	{
		"name": "Armando Molina",
		"phone": "(635) 289-6626",
		"email": "vulputate.dui@google.couk",
		"country": "Germany",
		"region": "Hưng Yên",
		"postalZip": "61218",
		"numberrange": 4,
		"currency": "$31.21"
	},
	{
		"name": "Kenneth Molina",
		"phone": "1-134-211-0785",
		"email": "tristique.senectus.et@aol.org",
		"country": "United Kingdom",
		"region": "Bursa",
		"postalZip": "52232",
		"numberrange": 6,
		"currency": "$43.84"
	},
	{
		"name": "Kirsten Morton",
		"phone": "1-424-804-4576",
		"email": "erat.neque@icloud.net",
		"country": "Russian Federation",
		"region": "Tyrol",
		"postalZip": "71-15",
		"numberrange": 2,
		"currency": "$15.42"
	},
	{
		"name": "Leroy Cohen",
		"phone": "1-891-565-4625",
		"email": "et.euismod@google.couk",
		"country": "Australia",
		"region": "North Jeolla",
		"postalZip": "IO7Q 2KW",
		"numberrange": 6,
		"currency": "$77.20"
	},
	{
		"name": "Tate George",
		"phone": "1-315-351-4227",
		"email": "donec@yahoo.couk",
		"country": "Philippines",
		"region": "Metropolitana de Santiago",
		"postalZip": "05135",
		"numberrange": 1,
		"currency": "$61.48"
	},
	{
		"name": "Abel Foley",
		"phone": "(424) 214-3050",
		"email": "placerat.eget@icloud.couk",
		"country": "Poland",
		"region": "Veneto",
		"postalZip": "45842",
		"numberrange": 3,
		"currency": "$13.04"
	},
	{
		"name": "Whilemina Allen",
		"phone": "(165) 322-2700",
		"email": "donec.porttitor@icloud.couk",
		"country": "Ireland",
		"region": "Cundinamarca",
		"postalZip": "6326",
		"numberrange": 6,
		"currency": "$50.11"
	},
	{
		"name": "Cooper Villarreal",
		"phone": "1-426-828-7185",
		"email": "fames.ac@outlook.com",
		"country": "Nigeria",
		"region": "Niger",
		"postalZip": "11019",
		"numberrange": 8,
		"currency": "$95.10"
	},
	{
		"name": "Conan Jennings",
		"phone": "(875) 844-5942",
		"email": "nunc.ac@protonmail.com",
		"country": "Sweden",
		"region": "Sucre",
		"postalZip": "566648",
		"numberrange": 4,
		"currency": "$23.75"
	},
	{
		"name": "Bianca Lee",
		"phone": "(367) 377-0167",
		"email": "sit.amet@yahoo.net",
		"country": "Russian Federation",
		"region": "West Java",
		"postalZip": "50463",
		"numberrange": 7,
		"currency": "$13.28"
	},
	{
		"name": "Kyle Salazar",
		"phone": "1-241-644-8336",
		"email": "facilisis.lorem@google.com",
		"country": "China",
		"region": "Illinois",
		"postalZip": "154617",
		"numberrange": 2,
		"currency": "$47.40"
	},
	{
		"name": "Sylvia Pena",
		"phone": "1-587-186-5722",
		"email": "fermentum.arcu.vestibulum@icloud.edu",
		"country": "Netherlands",
		"region": "Odessa oblast",
		"postalZip": "66716",
		"numberrange": 5,
		"currency": "$22.30"
	},
	{
		"name": "Reece Singleton",
		"phone": "1-671-817-5868",
		"email": "fusce@protonmail.couk",
		"country": "Ukraine",
		"region": "Schleswig-Holstein",
		"postalZip": "2241",
		"numberrange": 2,
		"currency": "$20.50"
	},
	{
		"name": "Clark Hawkins",
		"phone": "1-852-373-0256",
		"email": "tortor.nunc@aol.ca",
		"country": "Colombia",
		"region": "Marche",
		"postalZip": "653235",
		"numberrange": 3,
		"currency": "$40.04"
	},
	{
		"name": "Quinn Norton",
		"phone": "1-600-256-5347",
		"email": "aliquet.lobortis@protonmail.org",
		"country": "Costa Rica",
		"region": "Manitoba",
		"postalZip": "6144 EW",
		"numberrange": 2,
		"currency": "$75.11"
	},
	{
		"name": "Rajah Velasquez",
		"phone": "(248) 888-1183",
		"email": "turpis.non@outlook.org",
		"country": "Costa Rica",
		"region": "Victoria",
		"postalZip": "222989",
		"numberrange": 8,
		"currency": "$2.22"
	},
	{
		"name": "Bert Rasmussen",
		"phone": "1-555-618-3288",
		"email": "curabitur.egestas@aol.org",
		"country": "Ukraine",
		"region": "Bicol Region",
		"postalZip": "75J 1N1",
		"numberrange": 3,
		"currency": "$93.65"
	},
	{
		"name": "Tad O'Neill",
		"phone": "1-525-981-6189",
		"email": "scelerisque.dui@yahoo.net",
		"country": "Vietnam",
		"region": "Languedoc-Roussillon",
		"postalZip": "21422-60717",
		"numberrange": 8,
		"currency": "$22.95"
	},
	{
		"name": "Ruth Daniels",
		"phone": "(843) 241-1792",
		"email": "felis.donec@hotmail.couk",
		"country": "Turkey",
		"region": "Lombardia",
		"postalZip": "13647-411",
		"numberrange": 5,
		"currency": "$61.34"
	},
	{
		"name": "Jennifer Pollard",
		"phone": "(654) 662-8775",
		"email": "eu.eros@outlook.couk",
		"country": "Spain",
		"region": "Canarias",
		"postalZip": "6115-2160",
		"numberrange": 6,
		"currency": "$71.85"
	},
	{
		"name": "Wing Green",
		"phone": "(446) 412-0779",
		"email": "dignissim@icloud.org",
		"country": "Colombia",
		"region": "Małopolskie",
		"postalZip": "781421",
		"numberrange": 4,
		"currency": "$40.10"
	},
	{
		"name": "Walter Clay",
		"phone": "1-235-158-8949",
		"email": "amet.ornare.lectus@icloud.couk",
		"country": "Brazil",
		"region": "Khyber Pakhtoonkhwa",
		"postalZip": "46965",
		"numberrange": 0,
		"currency": "$14.93"
	},
	{
		"name": "Paloma Morales",
		"phone": "(374) 697-9526",
		"email": "a.ultricies.adipiscing@protonmail.couk",
		"country": "Norway",
		"region": "East Region",
		"postalZip": "24351",
		"numberrange": 6,
		"currency": "$14.99"
	},
	{
		"name": "Flynn Sanders",
		"phone": "1-464-808-0754",
		"email": "risus.quisque@yahoo.net",
		"country": "South Africa",
		"region": "La Libertad",
		"postalZip": "83131",
		"numberrange": 0,
		"currency": "$3.60"
	},
	{
		"name": "Irma Fulton",
		"phone": "1-527-478-2021",
		"email": "hendrerit@aol.ca",
		"country": "Chile",
		"region": "Valparaíso",
		"postalZip": "K6 3VE",
		"numberrange": 6,
		"currency": "$80.89"
	},
	{
		"name": "Jared Schneider",
		"phone": "(692) 558-8665",
		"email": "feugiat.lorem.ipsum@protonmail.com",
		"country": "Russian Federation",
		"region": "Georgia",
		"postalZip": "45541",
		"numberrange": 7,
		"currency": "$50.49"
	},
	{
		"name": "Daphne Sanchez",
		"phone": "(549) 169-6731",
		"email": "suspendisse.commodo@icloud.ca",
		"country": "Sweden",
		"region": "North Chungcheong",
		"postalZip": "8858",
		"numberrange": 1,
		"currency": "$18.10"
	},
	{
		"name": "Colby Ramos",
		"phone": "(892) 748-9219",
		"email": "sit.amet.consectetuer@icloud.edu",
		"country": "Ireland",
		"region": "Dolnośląskie",
		"postalZip": "478733",
		"numberrange": 10,
		"currency": "$73.19"
	},
	{
		"name": "Andrew Kirby",
		"phone": "(271) 459-6921",
		"email": "orci.ut.semper@outlook.edu",
		"country": "Peru",
		"region": "Soccsksargen",
		"postalZip": "7315-6721",
		"numberrange": 2,
		"currency": "$82.69"
	},
	{
		"name": "Evangeline Ratliff",
		"phone": "1-773-868-7384",
		"email": "augue.scelerisque.mollis@google.com",
		"country": "Austria",
		"region": "North Region",
		"postalZip": "144121",
		"numberrange": 6,
		"currency": "$75.86"
	},
	{
		"name": "Mara Hampton",
		"phone": "(355) 516-4019",
		"email": "tincidunt.dui@hotmail.com",
		"country": "Chile",
		"region": "Friesland",
		"postalZip": "L1J 0JY",
		"numberrange": 5,
		"currency": "$44.07"
	},
	{
		"name": "Arthur Davis",
		"phone": "(231) 447-4272",
		"email": "in.ornare@protonmail.couk",
		"country": "Colombia",
		"region": "Casanare",
		"postalZip": "4403",
		"numberrange": 1,
		"currency": "$34.69"
	},
	{
		"name": "Norman Frye",
		"phone": "1-123-315-5623",
		"email": "nibh.enim@google.org",
		"country": "Norway",
		"region": "Antwerpen",
		"postalZip": "53224-716",
		"numberrange": 5,
		"currency": "$8.66"
	},
	{
		"name": "Duncan Swanson",
		"phone": "(836) 171-0126",
		"email": "sagittis.lobortis@protonmail.org",
		"country": "Russian Federation",
		"region": "Bangka Belitung Islands",
		"postalZip": "0088",
		"numberrange": 6,
		"currency": "$42.07"
	},
	{
		"name": "Timon Morrison",
		"phone": "1-561-133-7868",
		"email": "et.ultrices@aol.edu",
		"country": "Turkey",
		"region": "Ulster",
		"postalZip": "31577-35172",
		"numberrange": 6,
		"currency": "$4.67"
	},
	{
		"name": "Doris Richard",
		"phone": "(220) 653-3589",
		"email": "eleifend.cras@protonmail.edu",
		"country": "Chile",
		"region": "Kiên Giang",
		"postalZip": "575841",
		"numberrange": 6,
		"currency": "$18.28"
	},
	{
		"name": "Cameron Mercer",
		"phone": "(493) 511-9125",
		"email": "magnis.dis.parturient@protonmail.org",
		"country": "Belgium",
		"region": "Santa Catarina",
		"postalZip": "852572",
		"numberrange": 9,
		"currency": "$88.97"
	},
	{
		"name": "Nehru Reyes",
		"phone": "1-412-606-4149",
		"email": "tortor.nibh@protonmail.org",
		"country": "Poland",
		"region": "Vlaams-Brabant",
		"postalZip": "151475",
		"numberrange": 3,
		"currency": "$22.08"
	},
	{
		"name": "Wynter Goodman",
		"phone": "(434) 416-4245",
		"email": "luctus.curabitur.egestas@outlook.ca",
		"country": "Canada",
		"region": "Khyber Pakhtoonkhwa",
		"postalZip": "09015",
		"numberrange": 3,
		"currency": "$59.28"
	},
	{
		"name": "Alden Black",
		"phone": "1-855-348-5528",
		"email": "phasellus@icloud.couk",
		"country": "Brazil",
		"region": "Heredia",
		"postalZip": "646635",
		"numberrange": 3,
		"currency": "$68.89"
	},
	{
		"name": "Jermaine Hendricks",
		"phone": "1-380-525-7258",
		"email": "ornare.in.faucibus@protonmail.com",
		"country": "United States",
		"region": "Diyarbakır",
		"postalZip": "41878",
		"numberrange": 6,
		"currency": "$96.43"
	},
	{
		"name": "Myra Ewing",
		"phone": "(338) 717-5025",
		"email": "ut@google.couk",
		"country": "United States",
		"region": "Khyber Pakhtoonkhwa",
		"postalZip": "486311",
		"numberrange": 10,
		"currency": "$61.32"
	},
	{
		"name": "Trevor Stevens",
		"phone": "1-883-552-3337",
		"email": "aenean@hotmail.net",
		"country": "Australia",
		"region": "Brussels Hoofdstedelijk Gewest",
		"postalZip": "45103",
		"numberrange": 5,
		"currency": "$91.98"
	},
	{
		"name": "Cedric Hayes",
		"phone": "1-571-417-6821",
		"email": "ligula.nullam@google.org",
		"country": "Peru",
		"region": "Australian Capital Territory",
		"postalZip": "830545",
		"numberrange": 4,
		"currency": "$92.34"
	},
	{
		"name": "Gregory Rosario",
		"phone": "1-968-681-6777",
		"email": "ante.maecenas.mi@yahoo.edu",
		"country": "Australia",
		"region": "South Chungcheong",
		"postalZip": "4336",
		"numberrange": 6,
		"currency": "$96.60"
	},
	{
		"name": "Allistair Webster",
		"phone": "1-779-238-0743",
		"email": "vitae@outlook.org",
		"country": "Costa Rica",
		"region": "North Kalimantan",
		"postalZip": "7551 RN",
		"numberrange": 3,
		"currency": "$68.63"
	},
	{
		"name": "Jolene Kirkland",
		"phone": "1-730-983-2664",
		"email": "velit@outlook.net",
		"country": "Netherlands",
		"region": "Assam",
		"postalZip": "362115",
		"numberrange": 1,
		"currency": "$34.74"
	},
	{
		"name": "Urielle Dunn",
		"phone": "1-631-549-8024",
		"email": "nulla.integer@yahoo.ca",
		"country": "Indonesia",
		"region": "Vestland",
		"postalZip": "35511",
		"numberrange": 9,
		"currency": "$58.99"
	},
	{
		"name": "Brian Mcguire",
		"phone": "(318) 605-0665",
		"email": "nullam.enim@yahoo.net",
		"country": "Singapore",
		"region": "Michoacán",
		"postalZip": "05511",
		"numberrange": 5,
		"currency": "$11.74"
	},
	{
		"name": "Raja Byers",
		"phone": "1-441-721-5776",
		"email": "mi.felis@google.net",
		"country": "Vietnam",
		"region": "Baden Württemberg",
		"postalZip": "28-743",
		"numberrange": 6,
		"currency": "$24.61"
	},
	{
		"name": "Robin Hendrix",
		"phone": "(711) 573-3374",
		"email": "risus.in.mi@yahoo.com",
		"country": "Norway",
		"region": "Lambayeque",
		"postalZip": "25354",
		"numberrange": 0,
		"currency": "$49.67"
	},
	{
		"name": "Raja Stokes",
		"phone": "1-678-987-0132",
		"email": "faucibus.morbi@protonmail.couk",
		"country": "Pakistan",
		"region": "Zachodniopomorskie",
		"postalZip": "328376",
		"numberrange": 2,
		"currency": "$50.91"
	},
	{
		"name": "Kirestin Moss",
		"phone": "(288) 817-4775",
		"email": "enim.curabitur@google.ca",
		"country": "Austria",
		"region": "Arizona",
		"postalZip": "81353",
		"numberrange": 3,
		"currency": "$9.81"
	},
	{
		"name": "Robert Dean",
		"phone": "1-228-113-6828",
		"email": "massa.vestibulum.accumsan@icloud.com",
		"country": "United States",
		"region": "Provence-Alpes-Côte d'Azur",
		"postalZip": "6837 EJ",
		"numberrange": 8,
		"currency": "$91.90"
	},
	{
		"name": "Naida Singleton",
		"phone": "(962) 828-4194",
		"email": "non@hotmail.org",
		"country": "Norway",
		"region": "Sonora",
		"postalZip": "08347",
		"numberrange": 4,
		"currency": "$34.52"
	},
	{
		"name": "Suki Buckner",
		"phone": "1-514-417-8315",
		"email": "proin.sed@yahoo.net",
		"country": "Singapore",
		"region": "Maranhão",
		"postalZip": "725167",
		"numberrange": 1,
		"currency": "$85.16"
	},
	{
		"name": "Maia Martin",
		"phone": "1-294-624-7652",
		"email": "sed.dictum@yahoo.org",
		"country": "Chile",
		"region": "Astrakhan Oblast",
		"postalZip": "O4E 8TX",
		"numberrange": 4,
		"currency": "$65.09"
	},
	{
		"name": "Kirk Daniels",
		"phone": "(418) 790-9371",
		"email": "nisl.maecenas.malesuada@google.net",
		"country": "India",
		"region": "Lima",
		"postalZip": "97-92",
		"numberrange": 10,
		"currency": "$57.39"
	}
]

''';