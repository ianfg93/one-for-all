DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano (
  id_plano INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_plano VARCHAR(50) NOT NULL,
  valor_plano DOUBLE NOT NULL
)  ENGINE=INNODB;

CREATE TABLE usuario (
  id_usuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(100) NOT NULL,
  id_plano INT NOT NULL,
  idade_usuario INT NOT NULL,
  data_assinatura_plano DATE NOT NULL,
  FOREIGN KEY (id_plano)
  REFERENCES plano (id_plano)
)  ENGINE=INNODB;
  
CREATE TABLE artista (
  id_artista INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_artista VARCHAR(100) NOT NULL
)  ENGINE=INNODB;
  
CREATE TABLE seguindo_artistas (
  id_usuario INT NOT NULL,
  id_artista INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id_usuario , id_artista),
      FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario),
      FOREIGN KEY (id_artista)
        REFERENCES artista (id_artista)
)  ENGINE=INNODB;
  
CREATE TABLE album (
  id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_album VARCHAR(100) NOT NULL,
  id_artista INT NOT NULL,
  ano_lancamento INT NOT NULL,
    FOREIGN KEY (id_artista)
      REFERENCES artista (id_artista)
)  ENGINE=INNODB;
  
CREATE TABLE musica (
  id_musica INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome_musica VARCHAR(100) NOT NULL,
  duracao_segundos INT NOT NULL,
  id_album INT NOT NULL,
    FOREIGN KEY (id_album)
      REFERENCES album (id_album)
)  ENGINE=INNODB;
  
CREATE TABLE historico (
  id_usuario INT NOT NULL,
  id_musica INT NOT NULL,
  data_reproducao DATE NOT NULL,
    CONSTRAINT PRIMARY KEY (id_usuario , id_musica),
      FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario),
      FOREIGN KEY (id_musica)
        REFERENCES musica (id_musica)
)  ENGINE=INNODB;

  INSERT INTO plano (nome_plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

  INSERT INTO usuario (nome_usuario, id_plano, idade_usuario, data_assinatura_plano)
  VALUES
    ('Barbara Liskov', 1,82,'2019-10-20'),
    ('Robert Cecil Martin', 1,58,'2017-01-06'),
    ('Ada Lovelace', 2,37,'2017-12-30'),
    ('Martin Fowler', 2,46,'2017-01-17'),
    ('Sandi Metz', 2,58,'2018-04-29'),
    ('Paulo Freire', 3,19,'2018-02-14'),
    ('Bell Hooks', 3,26,'2018-01-05'),
    ('Christopher Alexander', 4,85,'2019-06-05'),
    ('Judith Butler', 4,45,'2020-05-13'),
    ('Jorge Amado', 4,58,'2017-02-17');
    
  INSERT INTO artista (nome_artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO seguindo_artistas (id_usuario, id_artista)
  VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (2,3),
    (3,2),
    (4,4),
    (5,5),
    (5,6),
    (6,6),
    (6,1),
    (7,6),
    (9,3),
    (10,2);
    
  INSERT INTO album (nome_album, id_artista, ano_lancamento)
  VALUES
    ('Renaissance',1,2022),
    ('Jazz',2,1978),
    ('Hot Space',2,1982),
    ('Falso Brilhante',3,1998),
    ('Vento de Maio',3,2001),
    ('QVVJFA?',4,2003),
    ('Somewhere Far Beyond',5,2007),
    ('I Put A Spell On You',6,2012);

  INSERT INTO musica (nome_musica, duracao_segundos, id_album)
  VALUES
    ('BREAK MY SOUL',279,1),
    ('VIRGO’S GROOVE',369,1),
    ('ALIEN SUPERSTAR',116,1),
    ('Don’t Stop Me Now',203,2),
    ('Under Pressure',152,3),
    ('Como Nossos Pais',105,4),
    ('O Medo de Amar é o Medo de Ser Livre',207,5),
    ('Samba em Paris',267,6),
    ('The Bard’s Song',244,7),
    ('Feeling Good',100,8);
    
  INSERT INTO historico (id_usuario, id_musica, data_reproducao)
  VALUES
    (1,8,'2022-02-28 10:45:55'),
    (1,2,'2020-05-02 05:30:35'),
    (1,10,'2020-03-06 11:22:33'),
    (2,10,'2022-08-05 08:05:17'),
    (2,7,'2020-01-02 07:40:33'),
    (3,10,'2020-11-13 16:55:13'),
    (3,2,'2020-12-05 18:38:30'),
    (4,8,'2021-08-15 17:10:10'),
    (5,8,'2022-01-09 01:44:33'),
    (5,5,'2020-08-06 15:23:43'),
    (6,7,'2017-01-24 00:31:17'),
    (6,1,'2017-10-12 12:35:20'),
    (7,4,'2011-12-15 22:30:49'),
    (8,4,'2012-03-17 14:56:41'),
    (9,9,'2022-02-24 21:14:22'),
    (10,3,'2015-12-13 08:30:22');
