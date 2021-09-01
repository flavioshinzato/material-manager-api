### Dependências

 - Ruby v2.7.0
 - Rails v5.2.0
 - MySQL >= 5.6 

**Instalação das dependências**

A ferramenta `bundle` instalará todas as gems que foram definidas no Gemset do projeto.
```bash
$ gem install bundle
$ bundle install
```

**Configuração do banco de dados**

Primeiramente é necessário criar o arquivo de setup de banco: `config/database.yml`.

Por fim, crie o banco de dados, rode as migrations e popule o mesmo.

```bash
$ rails db:create db:migrate db:seed
```

**Start do servidor**
```bash
$ rails s
```

Link para parte admin: http://localhiost:3000/admin

Link para o front-end da aplicação: https://github.com/flavioshinzato/material-manager-front/
