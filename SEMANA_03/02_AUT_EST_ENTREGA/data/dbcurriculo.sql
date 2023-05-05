BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "individuo " (
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER NOT NULL,
	"foto"	TEXT NOT NULL,
	"cargo"	TEXT NOT NULL,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_registro")
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"curso"	TEXT NOT NULL,
	"data"	INTEGER NOT NULL,
	"descricao"	TEXT NOT NULL,
	"id_formacao"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_formacao") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_formacao")
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"nome_empresa"	TEXT NOT NULL,
	"data"	INTEGER NOT NULL,
	"cargo"	TEXT NOT NULL,
	"descricao"	TEXT NOT NULL,
	"id_experiencia"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_experiencia") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_experiencia")
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"nome"	TEXT NOT NULL,
	"data"	INTEGER NOT NULL,
	"descricao"	TEXT NOT NULL,
	"id_realiza"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_realiza") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_realiza")
);
CREATE TABLE IF NOT EXISTS "sobre_mim" (
	"endereco"	TEXT NOT NULL,
	"telefone"	NUMERIC NOT NULL,
	"email"	TEXT NOT NULL,
	"descricao"	TEXT NOT NULL,
	"id_sobremim"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_sobremim") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_sobremim")
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"nome_habilidade"	TEXT NOT NULL,
	"nivel_habilidade"	INTEGER NOT NULL,
	"id_habilidade"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_habilidade") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_habilidade")
);
CREATE TABLE IF NOT EXISTS "personalidade" (
	"nome_personalidade"	TEXT NOT NULL,
	"nivel_personalidade"	INTEGER NOT NULL,
	"id_perso"	INTEGER,
	"id_registro"	INTEGER,
	FOREIGN KEY("id_registro") REFERENCES "individuo"("id_registro"),
	FOREIGN KEY("id_perso") REFERENCES "individuo"("id_registro"),
	PRIMARY KEY("id_perso")
);
COMMIT;
