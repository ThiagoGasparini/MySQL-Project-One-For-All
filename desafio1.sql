DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      artist_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      id_artista INT,
      ano_lancamento YEAR,
      CONSTRAINT FOREIGN KEY (id_artista) REFERENCES artistas(artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      tipo VARCHAR(50) NOT NULL,
      preco DECIMAL(5,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      idade INT,
      id_plano INT, 
      data_assinatura DATE,
      CONSTRAINT FOREIGN KEY (id_plano) REFERENCES planos(plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario_artista(
      id INT AUTO_INCREMENT,
      id_usuario INT NOT NULL,
      id_artista INT NOT NULL,
      PRIMARY KEY (id, id_usuario, id_artista),
      CONSTRAINT FOREIGN KEY (id_usuario) REFERENCES usuarios(usuario_id),
      CONSTRAINT FOREIGN KEY (id_artista) REFERENCES artistas(artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.musicas(
      musica_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      id_album INT,
      duracao_segundos INT,
      CONSTRAINT FOREIGN KEY (id_album) REFERENCES albuns(album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historicoUsuario(
	  historico_id INT AUTO_INCREMENT,
      id_usuario INT,
      id_musica INT,
      data_reproducao DATETIME,
      PRIMARY KEY (historico_id, id_usuario),
      CONSTRAINT FOREIGN KEY (id_usuario) REFERENCES usuarios(usuario_id),
      CONSTRAINT FOREIGN KEY (id_musica) REFERENCES musicas(musica_id)
) ENGINE=InnoDB;

  INSERT INTO SpotifyClone.artistas (nome)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone'),
    ('Elis Regina');

  INSERT INTO SpotifyClone.albuns (nome, id_artista, ano_lancamento)
  VALUES
    ('Renaissance', '1', '2022'),
    ('Jazz', '2', '1978'),
    ('Hot Space', '2', '1982'),
    ('QVVJFA?', '3', '2003'),
    ('Somewhere Far Beyond', '4', '2007'),
    ('I Put A Spell On You', '5', '2012'),
    ('Falso Brilhante', '6', '1998'),
    ('Vento de Maio', '6', '2001');

  INSERT INTO SpotifyClone.planos(tipo, preco)
  VALUES ('gratuito',0),
         ('familiar',7.99),
         ('universitário',5.99),
         ('pessoal',6.99);

  INSERT INTO SpotifyClone.usuarios(nome, idade, id_plano, data_assinatura)
  VALUES ('Barbara Liskov', 82, 1,'2019-10-20'),
         ('Robert Cecil Martin', 58, 1,'2017-01-06'),
         ('Ada Lovelace', 37, 2,'2017-12-30'),
         ('Martin Fowler', 46, 2,'2020-05-13'),
         ('Sandi Metz', 58, 2,'2017-02-17'),
         ('Paulo Freire', 19, 3,'2017-01-06'),
         ('Bell Hooks', 26, 3,'2018-01-05'),
         ('Christopher Alexander', 85, 4,'2018-02-14'),
         ('Judith Butler', 45, 4,'2018-04-29'),
         ('Jorge Amado', 58, 4,'2017-01-17');

  INSERT INTO SpotifyClone.usuario_artista(id_usuario, id_artista)
  VALUES (1, 3),
         (1, 1),
         (1, 5),
         (2, 5),
         (2, 6),
         (3, 5),
         (3, 1),
         (4, 3),
         (5, 3),
         (5, 2),
         (6, 6),
         (6, 1),
         (7, 2),
         (8, 2),
         (9, 4),
         (10, 1);

  INSERT INTO SpotifyClone.musicas(nome, id_album, duracao_segundos)
  VALUES ('BREAK MY SOUL', 1, 279),
         ('VIRGO’S GROOVE', 1, 369),
         ('ALIEN SUPERSTAR', 1, 116),
         ('Don’t Stop Me Now', 2, 203),
         ('Under Pressure', 3, 152),
         ('Samba em Paris', 4, 267),
         ('The Bard’s Song', 5, 244),
         ('Feeling Good', 6, 100),
         ('Como Nossos Pais', 7, 105),
         ('O Medo de Amar é o Medo de Ser Livre', 8, 207);

  INSERT INTO SpotifyClone.historicoUsuario(id_usuario, id_musica, data_reproducao)
  VALUES (1, 6, '2022-02-28 10:45:55'),
         (1, 2, '2020-05-02 05:30:35'),
         (1, 8, '2020-03-06 11:22:33'),
         (2, 8, '2022-08-05 08:05:17'),
         (2, 10, '2020-01-02 07:40:33'),
         (3, 8, '2020-11-13 16:55:13'),
         (3, 2, '2020-12-05 18:38:30'),
         (4, 6, '2021-08-15 17:10:10'),
         (5, 6, '2022-01-09 01:44:33'),
         (5, 5, '2020-08-06 15:23:43'),
         (6, 10, '2017-01-24 00:31:17'),
         (6, 1, '2017-10-12 12:35:20'),
         (7, 4, '2011-12-15 22:30:49'),
         (8, 4, '2012-03-17 14:56:41'),
         (9, 7, '2022-02-24 21:14:22'),
         (10, 3, '2015-12-13 08:30:22');

         
       

          
         