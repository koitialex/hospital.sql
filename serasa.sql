create database serasa;

create table empregado(
    codigo int primary key,
    nome varchar(50) not null,
    depto int, 
    salario decimal(4,2) not null
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
set depto = 9414
where nome in (43500, 43501, 43502 ) ;