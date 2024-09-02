CREATE TABLE IF NOT EXISTS product (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  price NUMERIC(6,2) NOT NULL,
  available BOOLEAN,
  created timestamp DEFAULT NOW()
)
