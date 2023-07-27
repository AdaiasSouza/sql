# criando novo usuario
create user usermysql@'%' identified by 'cursomysql'; # usermysql -> nome do usuario, cursomysql -> senha do usuário
grant all privileges on *.* to usermysql@'%' with grant option;
revoke all on *.* from usermysql;

# privilegio global
grant all on *.* to usermysql@localhost;
revoke all on *.* from usermysql;

# privilegio a nivel de banco de dados
grant all to 'banco_de_dados'.* to usermysql@localhost
revoke all on 'banco_de_dados'.*;

# privilegio nivel de tabela
grant all on 'banco_de_dados.nome_tabela';
revoke all on 'banco_de_dados.nome_tabela';

# privilegio a nivel de coluna
grant select('nomecoluna1'), insert('nomecoluna1'), update('nomecoluna1')
		on 'banco_de_dados.nome_tabela' to usermysql@localhost identified by 'senha';

# privilegio a nivel de stored procedures
grant routine on 'banco_de_dados'.* to usermysql@localhost;
grant execute on procedure 'banco_de_dados.nomeprocedure' to usermysql@localhost;

# privilegio a nivel de proxy
grant PROXY on usermysql@localhost to 'usuarioexterno'@'hostexterno';





