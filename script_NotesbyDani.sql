CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `first_name` VARCHAR(100) NOT NULL,
   `last_name` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(100) NOT NULL,
   `create_date` DATE NOT NULL,
   `modif_date` DATE NOT NULL,
   `description` TEXT NOT NULL,
   `delete_note` TINYINT NOT NULL,
   `user_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes_categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `note_id` INT NOT NULL,
   `category_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `category_name` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_2a40f7c7-fb7e-4431-b074-dfa8eafa87a3` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_2195cdf0-8522-42e2-86de-0a3422031b8c` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_24147af1-2d71-4f0d-a1c9-075c6a61b961` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`)  ;

insert INTO NotesbyDani.users (id, first_name, last_name, email) values
(default, 'Dani', 'Goyetche', 'goyetche@mail.com'),
(default, 'Ser', 'Camino', 'camino@mail.com'),
(default, 'Martin', 'Goyetche', 'martin@mail.com'),
(default, 'Meli', 'Goyetche', 'meli@mail.com'),
(default, 'Pau', 'Camino', 'pau@mail.com'),
(default, 'Benja', 'Camino', 'benja@mail.com'),
(default, 'Mia', 'Camino', 'mia@mail.com'),
(default, 'Mamba', 'Negra', 'negra@mail.com'),
(default, 'Ali', 'Alderetes', 'ali@mail.com'),
(default, 'Horacio', 'Goyetche', 'horacio@mail.com');

insert into categories values
(DEFAULT, 'Musica'),
(DEFAULT, 'Deporte'),
(DEFAULT, 'Proyectos'),
(DEFAULT, 'Viajes'),
(DEFAULT, 'Actualidad'),
(DEFAULT, 'Recetas'),
(DEFAULT, 'Alimentos'),
(DEFAULT, 'Compras'),
(DEFAULT, 'Libros'),
(DEFAULT, 'Peliculas');

insert into notes values
(DEFAULT, 'Discografia completa de SUMO', NOW(), NOW(), 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu',0, 7),
(default, 'Hockey',NOW(), NOW(), 'Tewxto falso',1 ,5),
(default, 'Europa 2022 ',NOW(), NOW(), 'perspiciatis unde omnis iste natus error sit voluptatem',0 ,3),
(default, 'No mires arriba',NOW(), NOW(), 'Tewxto falso',1 ,2),
(default, 'Vitel Toné',NOW(), NOW(), 'Aca va la descripcion de la receta',0 ,9),
(default, 'Super',NOW(), NOW(), 'Que fiaca hacer las compras',0 ,2),
(default, 'Cataratas',NOW(), NOW(), 'Que calor',1 ,5),
(default, 'Omicron',NOW(), NOW(), 'Enfermedad por el nuevo coronavirus',1 ,3),
(default, 'Libros',NOW(), NOW(), 'Acid for the children',0 ,2),
(default, 'You',NOW(), NOW(), 'Serie',0 ,1);

insert INTO NotesbyDani.notes_categories (id, note_id , category_id) values
(default, 9, 5),
(default, 8, 5),
(default, 7, 4),
(default, 6, 4),
(default, 5, 6),
(default, 4, 6),
(default, 3, 8),
(default, 2, 3),
(default, 1, 3),
(default, 10, 1);
