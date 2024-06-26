CREATE TABLE IF NOT EXISTS "Salas" (
	"Id"	INTEGER,
	"Nombre"	VARCHAR(100) NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Filas" (
	"Id"	INTEGER,
	"Codigo"	VARCHAR(1) NOT NULL,
	"IdSala"	INTEGER NOT NULL,
	FOREIGN KEY("IdSala") REFERENCES "Salas"("Id"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Asientos" (
	"Id"	INTEGER,
	"Numero"	INTEGER NOT NULL,
	"IdFila"	INTEGER NOT NULL,
	FOREIGN KEY("IdFila") REFERENCES "Filas"("Id"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Funciones" (
	"Id"	INTEGER,
	"IdPelicula"	INTEGER NOT NULL,
	"Fecha"	DATE NOT NULL,
	"HoraInicio"	VARCHAR(6) NOT NULL,
	"HoraFin"	VARCHAR(6) NOT NULL,
	"IdSala"	INTEGER NOT NULL,
	"Eliminado"	BOOLEAN NOT NULL DEFAULT 0,
	FOREIGN KEY("IdPelicula") REFERENCES "Peliculas"("Id"),
	FOREIGN KEY("IdSala") REFERENCES "Salas"("Id"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Peliculas" (
	"Id"	INTEGER,
	"Titulo"	VARCHAR(100) NOT NULL,
	"Director"	VARCHAR(100) NOT NULL,
	"Genero"	VARCHAR(50) NOT NULL,
	"Sinopsis"	TEXT NOT NULL,
	"Duracion"	INTEGER NOT NULL,
	"Eliminado"	BOOLEAN NOT NULL DEFAULT 0,
	PRIMARY KEY("Id" AUTOINCREMENT)
);