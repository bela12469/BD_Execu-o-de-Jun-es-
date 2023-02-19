CREATE TABLE cliente(
  ID SERIAL PRIMARY KEY,
  nome VARCHAR NOT NULL,
  sobrenome VARCHAR NOT NULL,
  idade INT NOT NULL,
)
  


CREATE TABLE pedido(
  ID SERIAL PRIMARY KEY,
  item VARCHAR NOT NULL,
  quantidade INT NOT NULL,
  fk_id_cliente INT NOT NULL,
  CONSTRAINT fk_id_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente (ID)
)

INSERT INTO cliente
(nome, sobrenome, idade)
VALUES 
('Janaina', 'Rodrigues', 28),
('Fernando', 'Reis', 26),
('Patricia', 'Vasconcelos', 35),
('Emanuel', 'Dabril', 42),
('Sabrina', 'Mello', 16)
('Marinaa', 'Sato', 22)
('Rogerio', 'Matos', 18)


INSERT INTO pedido
(item , quantidade, fk_id_cliente)
VALUES 
('serum', 2, 1),
('sabonete', 5, 2),
('perfume', 2, 3),
('gel', 1, 4),
('shampool', 4, 5)


SELECT * FROM pedido
INNER JOIN cliente
ON pedido.fk_id_cliente = id.cliente

SELECT * FROM pedido
RIGHT JOIN cliente
ON pedido.fk_id_cliente = cliente.id

SELECT * FROM pedido
LEFT JOIN cliente
ON pedido.fk_id_cliente = cliente.id

