# Projeto de Server 2016 – Parte 1

Implantação

1-	Instalar um Windows 2012 Server Data Center (WMNK4-TBQF7-RXDY7-7RB89-M97JY) em uma PC REAL

2-	Instalar uma estação de Trabalho Windows 10 PCNºdoSEUgrupo no NOTEBOOK

3-	Ip do Windows Server = 172.16.NºGRUPO.10 255.255.255.0 Hostname = SRVGRUPO

4-	Instalar o AD = Gnº.intra com o DNS integrado.

5-	Instalar o DHCP para distribuir endereçamento para as estações. 172.16.NºGRUPO.100 até 172.16.NºGRUPO.200

6-	Criar uma Reserva no Servidor DHCP para o seu Notebook 

7-	Ingressar a Estação de Trabalho no Domínio 
Administração

1)	Criar uma OU – GNº

2)	Criar os Usuários:

* Leandro Ramos
* Jefferson Costa
* Edilson Silva
* Kelly Cristina
* Noemi Pinheiro
* Anderson Mendonça
* Robson Vaamonde
* Robson Angelotti
* Sirlene Matos
* Milton Santos
* Diego Rosalino Cornelio
* Paula Fernandez
* Gabriela Ludovico
* Teresa Lima
* Catarina Matos

3)	Criar o Usuário: ADMSENAC com direitos de Administrador do Domínio.

4)	Configurar o RSAT para administrar o Servidor da sua Estação de Trabalho. 

5)	Criar o Grupo Local Segurança Professores e inserir os Usuários: Leandro Ramos, Edilson Silva, Kelly Cristina, Robson Vaamonde, Sirlene Matos e Milton Santos

6)	Criar o Grupo Local Segurança Coordenadores e inserir os Usuários: Jefferson Costa e Noemi Pinheiro.

7)	Criar o Grupo Local Segurança Suporte e inserir os Usuários: Robson Vaamonde, Robson Angelotti.

8)	Criar o Grupo Local Segurança Diretoria e inserir os Usuários: Anderson Mendonça

9)	Criar o Grupo Local Segurança Alunos e inserir o Usuário: Paula Fernandez, Gabriela Ludovico, Teresa Lima, Catarina Matos e Diego Rosalino Cornelio

10)	Todos os Usuários têm Pasta Base centralizada no Servidor com Segurança.

11)	Usuários NÃO visualizem as pastas dos outros na PASTA BASE

12)	O usuário Robson Vaamonde loga de manhã e tarde de segunda a sexta.

13)	O usuário Diego Rosalino loga de tarde e noite de segunda a sábado.

14)	O usuário Anderson Mendonça loga somente na Estação de Trabalho PC300 e PC400

15)	A conta do Usuário Milton Santos vence em 15/12/2022

16)	Criar uma PASTA – Ex-AlunosNº com um conteúdo de mais de 100 MB e Compactar o Conteúdo com acesso somente dos Coordenadores e Diretoria.

17)	Criar uma PASTA – FinanceiroNº onde os Coordenadores têm RW com exceção do Jefferson Costa.

18)	Criar uma PASTA – RelatoriosNº onde os Professores têm RW com exceção da Kelly Cristina.

19)	Criar e Compartilhar as Pastas com as seguintes permissões (administradores CT):

Pasta | Professores | Coordenadores | Suporte | Diretoria | Alunos
--- | --- | --- | --- | --- | ---
Aulas | RW | R | R | x | R
Provas | RW | RW | R | x | x
Alunos | RW | R | RW | x | RW
Trabalhos | RW | R | R | x | RW
Coordenacao | x | RW | R | x | x
Diretoria$ | x | X | X | RW | x
Suporte | x | X | RW | x | x
Softwares$ | x | X | RW | x | x
Publica | RW | RW | RW | RW | RW
Turmas | R | R | R | x | RW

20)	Instalar e compartilhar as Impressoras: 

a.	EPSON Diretoria e Coordenadores

b.	HPLaser1 (8:00 as 18:00) PROFESSORES, Coordenadores, Suporte

c.	HPLaser2 (8:00 as 23:00) Alunos, Professores e Suporte

21)	Criar um POOL de Impressão com uma Impressora Lexmark nos IPS 172.16.X.130, 172.16.X.131, e 172.16.X.132,

22)	Criar uma reserva/exclusão de IPs das impressoras no seu DHCP.

23)	Criar um Script de Logon para o Grupo Aluno que Mapeia as Pastas: (Aulas, alunos, Publica e Trabalhos) instala a Impressora HPLaser2, 
Cria um atalho no desktop V: para o mapeamento Alunos e exibe uma Mensagem de Boas Vindas.

24)	Criar um Script de Logon para o Grupo Professores que Mapeia as Pastas: (Aulas, alunos, Publica, Trabalhos e PROVAS) instala a 
Impressora HPLaser2 e HPLaser1, Cria um atalho no desktop V: para o mapeamento Alunos.

25)	Criar um conjunto de GPOs para os Alunos, onde os usuários não podem acessar o MS-DOS, Painel de Controle, Registro, Acesso as Unidades 
de Disco e tem um papel de parede definido via GPO.

26)	Montar um Servidor WEB para um Site www.souadmwindowsGNº.com.br

27)	Montar um SITE: www.souadmlinuxGnº.com.br

28)	Configurar Cota de Disco nas Pastas Base dos Usuários para limitar em 20 MB

29)	Testar com um usuário se a Pasta Base NÃO permite exceder a Cota.

30)	Configurar Cota de Disco na Pasta Pública para Limitar em 2GB

31)	Configurar Triagem de Arquivos na Pasta Pública para não permitir Arquivos de Sistema e executáveis (.exe, .bat, .com, etc...)

32)	 Testar a Triagem na Pasta base com um usuário

33)	Habilitar a Lixeira no AD. 

34)	Configurar o Backup de todos os Dados dos Usuários de segunda a sexta as 14:00, 15:00, 15:30 e 16:30 em uma pasta compartilhada no NOTEBOOK

35)	Criar uma auditoria na Pasta Trabalhos para descobrir quem apagou um determinado arquivo. -*** Desafio ***

36)	Criar uma GPO para o Grupo Suporte onde faça a instalação automatizada de um pacote MSI (Chrome) para as estações de trabalho.

37)	Criar uma GPP para Mapear a Impressora HP007, Mapear a Pasta NotasFinais em J: e criar um atalho no Desktop para a Unidade J:

38)	Criar 20 GPOs diferentes das anteriores para aplicar em seu ambiente. 
