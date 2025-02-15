CREATE TABLE IF NOT EXISTS movies (
    id INT,
    movie_id INT,
    titel TEXT,
    genre_ids INT,
    release_date TEXT,
    vote_avg FLOAT,
    b_rating INT,
    b_dubious INT,
    b_year TEXT,
    b_date TEXT,
    PRIMARY KEY(b_date, movie_id)
);

CREATE TABLE IF NOT EXISTS directors (
    idx INT,
    movie_id INT,
    director_name TEXT,
    PRIMARY KEY (movie_id, director_name),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE IF NOT EXISTS genre (
    ID INT,
    genre_name TEXT,
    PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS movie_genre (
    i INT,
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genre(ID)
);