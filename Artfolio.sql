
CREATE DATABASE db_artfolio;
USE db_artfolio;

CREATE TABLE tb_tecnicasusadas (
tec_codigo int not null auto_increment,
tec_tecnica varchar(60) not null,
CONSTRAINT pk_tecnicasusadas PRIMARY KEY(tec_codigo)
) ENGINE=InnoDB;

CREATE TABLE tb_artistas (
art_codigo int not null auto_increment,
art_nome varchar(100) not null,
art_email varchar(80) not null,
art_senha varchar(20) not null,
art_idade int,
art_formacao varchar(50),
art_peqbio varchar(250),
art_capaimg varchar(40),
art_fotodeperfilimg varchar(100),
art_tec_codigo int,
CONSTRAINT pk_artistas PRIMARY KEY(art_codigo),
CONSTRAINT fk_tec_art FOREIGN KEY (art_tec_codigo) REFERENCES tb_tecnicasusadas(tec_codigo)
) ENGINE=InnoDB;

CREATE TABLE tb_obras (
obr_codigo int not null auto_increment,
obr_arquivo varchar(100) not null,
obr_titulo varchar(60) not null,
obr_anodaproducao date not null,
obr_legenda varchar(700) not null,
obr_dimensao varchar(15) not null,
obr_art_codigo int,
obr_tec_codigo int,
CONSTRAINT fk_art_obr FOREIGN KEY (obr_art_codigo) REFERENCES tb_artistas(art_codigo),
CONSTRAINT fk_tec_obr FOREIGN KEY (obr_tec_codigo) REFERENCES tb_tecnicasusadas(tec_codigo),
CONSTRAINT pk_obras PRIMARY KEY(obr_codigo)
) ENGINE=InnoDB;


insert into tb_tecnicasusadas( tec_tecnica ) values ('Acrilica');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Aquarela');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Artesanato');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Bordado');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Calcografia');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Cartoon');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Ceramica');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Charge');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Colagem Analogica');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Colagem Digital');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Costura');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Croche');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Croqui');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Desenho');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Fotografia');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Fuxico');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Guache');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Ilustracao Digital');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Lettering');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Litografia');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Mosaico');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Muralismo');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Pastel Seco');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Pontilhado');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Quadrinhos');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Serigrafia');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Tapeçaria');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Tinta a oleo');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Xilogravura');
insert into tb_tecnicasusadas( tec_tecnica ) values ('Nao Possuo Tecnica Fixa');
