create database serasa;

use serasa;

create table empregado(
    codigo int not null primary key,
    nome varchar(50) not null,
    depto int not null, 
    salario decimal not null
);

insert into empregado (codigo,nome,depto,salario)
VALUES
(43500,	"Ana da Silva",9411,5200),
(43501,	"Vitoria Beatriz",9411,3400),
(43502,	"Pedro José",	9412,2600),
(43503,	"Amary Manoel",9412,8400),
(43504,	"Carlos Silva",9412,5600),
(43505,	"Vitorio Cardoso",9413,2300),
(43506,	"Carlos Ives Souza",9413,3380),
(43507,	"Victor Silva",9413,4500),
(43508,	"Saulo Monteiro",9413,6800);

-- Altere o departamento de todos para 9414

update empregado
set depto = 9414
where depto between 9411 and 9413 ;

-- Altere o departamento dos três primeiros registros para 9415

update empregado
set depto = 9415
where codigo in (43500,43501,43502);

-- Altere o departamento de cada um para o valor original novamente

UPDATE empregado
SET depto = 9411
where codigo in (43500,43501);
UPDATE empregado
SET depto = 9412
where codigo in (43502,43503,43504);
UPDATE empregado
SET depto = 9413
where codigo in (43505,43506,43507,43508);
 
-- Realiza um SELECT para todos os dados da tabela "empregado"
SELECT * FROM empregado;
 
-- Realiza um SELECT da coluna "nome" onde o salário for igual a R$ 6800,00
SELECT nome FROM empregado WHERE salario = 6800;
 
-- Realiza um SELECT das colunas "codigo" e "nome" onde o salário for igual a R$ 5200,00
SELECT codigo, nome FROM empregado WHERE salario = 5200;
 
-- Realiza um SELECT da coluna "depto" onde o salário for maior que R$ 3000,00 e menor que R$ 5500,00
SELECT depto FROM empregado WHERE salario > 3000 AND salario < 5500;
 
-- Realiza um SELECT das colunas "codigo" e "depto" onde o salário estiver entre R$ 2600,00 e R$ 3380,00
SELECT codigo, depto FROM empregado WHERE salario BETWEEN 2600 AND 3380;
 
-- Realiza um SELECT da coluna "nome" onde o depto for 9411 ou 9412
SELECT nome FROM empregado WHERE depto IN (9411, 9412);
 
-- Realiza um SELECT das colunas "depto", "salario" e "nome" onde o código for 43500 ou 43502
SELECT depto, salario, nome FROM empregado WHERE codigo IN (43500, 43502);
 
-- Realiza um SELECT SUM de todos os salários da tabela
SELECT SUM(salario) AS total_salarios FROM empregado;