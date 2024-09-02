-- name: GetProduct :one
SELECT * FROM product WHERE id = $1 LIMIT 1;
-- name: ListProducts :many
SELECT * FROM product
ORDER BY name;

-- name: CreateProduct :one
INSERT INTO product (
 name, price, available 
) VALUES ($1, $2, $3)
RETURNING *;

-- name: UpdateProduct :exec
UPDATE product
  set name = $2,
  price = $3
WHERE id = $1;

-- name: DeleteProduct :exec
DELETE FROM product
WHERE id = $1;
