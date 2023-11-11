To complete part 1, run `npm run test-1` and follow through this readme until you pass all of the tests. All you should need to do is change your `main.db` file through your sqlite CLI, and then rerun the tests as you go.

We will need to do a few things to set up our database. We will need three tables:

1. Users Table

   - id: auto incrementing primary id
   - first_name string
   - last_name string
   - motto string nullable
   <!-- CREATE TABLE users (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   first_name TEXT NOT NULL,
   last_name TEXT NOT NULL,
   motto TEXT NOT NULL); -->

2. Dogs Table

   - id: auto incrementing primary id
   - name string
   <!-- CREATE TABLE dogs (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   name TEXT NOT NULL
   ); -->

3. Favorites Table
   - should tie together users and dogs with foreign id's
   - needs `user_id` & `dog_id` keys
   - must be foreign keys
   <!-- CREATE TABLE favorites (
   id INTEGER PRIMARY KEY,
   user_id INTEGER NOT NULL,
   dog_id INTEGER NOT NULL,
   FOREIGN KEY (user_id) REFERENCES users(id),
   FOREIGN KEY (dog_id) REFERENCES dogs(id)
   ); -->

We will also need to create some entries in these tables:

1. Users

   - 1Create a user named Jon Higgz, who's life motto is "I love coding".
   <!-- INSERT INTO users (first_name, last_name, motto) VALUES ('Jon', 'Higgz', 'I love coding); -->
   - 2Create a user named Andrey Rusterton, who's life motto is "I love coding even more".
   <!-- INSERT INTO users (first_name, last_name, motto) VALUES ('Andrey', 'Rusterton', 'I love coding even more); -->
   - 3Create a user named Peter Garboni, who's life motto is "I love coding even more".
   <!-- INSERT INTO users (first_name, last_name, motto) VALUES ('Peter', 'Garboni', 'I love coding even more); -->

2. Dogs

   - 1Create a dog named DOOMSLAYER
   <!-- INSERT INTO dogs (name) VALUES (DOOMSLAYER); -->
   - 2Create a dog named Zoey
   <!-- INSERT INTO dogs (name) VALUES (Zoey); -->
   - 3Create a dog named Jefferey
   <!-- INSERT INTO dogs (name) VALUES (Jefferey); -->

3. Favorites
   - 3Peter Favorites 1Doomslayer
   <!-- INSERT INTO favorites (user_id, dog_id) VALUES (3, 1); -->
   - 1Jon Favorites 1Doomslayer
   <!-- INSERT INTO favorites (user_id, dog_id) VALUES (1, 1); -->
   - 2Andrey Favorites 1Doomslayer
   <!-- INSERT INTO favorites (user_id, dog_id) VALUES (2, 1); -->
   - 1Jon Favorites 3Jefferey
   <!-- INSERT INTO favorites (user_id, dog_id) VALUES (1, 3); -->
   - 2Andrey favorites 2Zoey
   <!-- INSERT INTO favorites (user_id, dog_id) VALUES (2, 2); -->

Go ahead and run `npx jest part1 --watch`. You will need to create a `main.db` and change it via your `sqlite` command on your terminal. As you begin to setup your database you should notice that the tests will respond to the changes if you rerun it.

Once main.db is set up correctly and all of your part 1 tests are passing you may move on to part 2.
