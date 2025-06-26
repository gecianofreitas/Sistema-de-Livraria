# Sistema-de-Livraria
-- Criação da tabela de produtos (livros)
CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_livro INT,
    nome_cliente VARCHAR(100),
    data_pedido DATE,
    quantidade INT,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

-- Inserção de dados na tabela livros
INSERT INTO livros (id_livro, titulo, autor, preco, estoque) VALUES
(1, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 29.90, 50),
(2, 'Dom Casmurro', 'Machado de Assis', 39.90, 30),
(3, '1984', 'George Orwell', 45.00, 20);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id_pedido, id_livro, nome_cliente, data_pedido, quantidade) VALUES
(1, 1, 'Maria Silva', '2025-06-20', 2),
(2, 2, 'João Costa', '2025-06-22', 1),
(3, 3, 'Ana Lima', '2025-06-25', 3);
