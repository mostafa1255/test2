import 'plant_model.dart';

List<Plants> plants = [
  Plants(
    id: 0,
    name: 'Flutter',
    imagePath: 'assets/images/app1 (1).jpg',
    category: 'Mobile',
    description:
        'Flutter uses Dart as its primary programming language. Dart is an object-oriented, client-optimized language with features like Hot Reload, making it efficient for building cross-platform mobile, web, and desktop applications.. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Front end',
    imagePath: 'assets/images/app1 (2).jpg',
    category: 'Web',
    description:
        'Front-end development involves creating the user interface and experience of a website or application, focusing on designing and implementing elements that users interact with directly. It encompasses HTML, CSS, and JavaScript to ensure a visually appealing and responsive user interface.',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'IOS',
    imagePath: 'assets/images/app1 (3).jpg',
    category: 'Mobile',
    description:
        'iOS development primarily utilizes the Swift programming language, designed by Apple. Swift is a powerful and modern language, known for its safety features, performance, and ease of use, making it the preferred choice for creating applications on the iOS platform.',
    price: 60.00,
    isFavorit: false,
  ),
  Plants(
    id: 3,
    name: 'Android',
    imagePath: 'assets/images/app1 (4).jpg',
    category: 'Mobile',
    description:
        'Android primarily uses Java and Kotlin as the main programming languages for app development. Java has been traditionally used for Android development, while Kotlin, introduced by JetBrains, is now the preferred and officially supported language by Google for building modern, concise, and interoperable Android applications',
    price: 90.00,
    isFavorit: false,
  ),
  Plants(
    id: 4,
    name: 'java',
    imagePath: 'assets/images/app1 (5).jpg',
    category: 'Back End',
    description:
        'Backend, or server-side development, involves creating and managing the server, databases, and application logic that enable the functionality and data processing for a software application, ensuring seamless interactions with the user interface.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 5,
    name: 'UI/UX',
    imagePath: 'assets/images/app1 (6).jpg',
    category: 'design',
    description:
        'UI (User Interface) focuses on the visual elements of a digital product, emphasizing design and layout to create an intuitive and aesthetically pleasing interaction UX (User Experience) involves the overall user journey, encompassing usability, accessibility, and satisfaction, aiming to enhance the users overall interaction with a product or service.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 6,
    name: 'SoftSkiles',
    imagePath: 'assets/images/app1 (7).jpg',
    category: 'skiles',
    description:
        'Soft skills in programming refer to non-technical abilities that enhance a developers effectiveness, including communication, problem-solving, teamwork, and adaptability crucial for collaborative and successful software development projects.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 7,
    name: 'python',
    imagePath: 'assets/images/app1 (8).jpg',
    category: 'Back end',
    description:
        'Python is a high-level, versatile programming language known for its readability and simplicity, making it widely used for web development, data science, artificial intelligence, and automation tasks. Its extensive libraries and community support contribute to its popularity among developers.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 8,
    name: 'Node.js',
    imagePath: 'assets/images/app1 (9).jpg',
    category: 'Back end',
    description:
        'Node.js is an open-source, server-side JavaScript runtime environment that allows developers to execute JavaScript code on the server, enabling the creation of scalable and high-performance network applications. It is known for its event-driven architecture and non-blocking I/O, making it particularly well-suited for building real-time applications and APIs.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 9,
    name: 'Photoshop ',
    imagePath: 'assets/images/app1 (10).jpg',
    category: 'design',
    description:
        'Photoshop is a powerful graphics editing software developed by Adobe, widely used for image manipulation, retouching, and design. It offers an extensive array of tools for professionals and enthusiasts to enhance, edit, and create visually stunning digital images.',
    price: 100.00,
    isFavorit: false,
  ),
  Plants(
    id: 10,
    name: 'Illustrator',
    imagePath: 'assets/images/app1 (11).jpg',
    category: 'design',
    description:
        'Adobe Illustrator is a vector graphics editor developed by Adobe Inc., widely used for creating illustrations, logos, icons, and other scalable graphic',
    price: 100.00,
    isFavorit: false,
  ),
];
List<Plants> fav = [];
List<Plants> cart = [];

List<Plants> populerPlants = [
  Plants(
    id: 0,
    name: 'node.js track',
    imagePath: 'assets/images/app1 (1).jpg',
    category: 'Back end',
    description:
        // '25 only instead of 75. (This offer is valid for two days)',
        '',
    price: 25.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Front End',
    imagePath: 'assets/images/app1 (2).jpg',
    category: 'web',
    description: '',
    price: 25.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'java',
    imagePath: 'assets/images/app1 (4).jpg',
    category: 'Back End',
    description: '',
    price: 25.00,
    isFavorit: false,
  ),
];
