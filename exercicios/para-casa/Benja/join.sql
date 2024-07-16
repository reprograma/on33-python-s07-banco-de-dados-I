-- join para combinar dados entre as duas tabelas
SELECT  
   livros.titulo, 
   livros.autor, 
   estoque.quantidade
FROM 
    estoque
JOIN 
    livros ON estoque.livro_id = livros.id;