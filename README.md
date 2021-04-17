## Checks de Bancos de Dados

Aplicação construida para validação de aula de pós graduação relacionado a Persitência de Dados.
---

- Está APP é composta por simples `checks` se o serviçõs de bancos está **OK** de acordo com o que foi proposto:
  - Uso manual de controle de transação (begin, commit, rollback)
  - Persistência de dados em cache
  - Persistência de escrita em um banco relacional
  - Leitura em banco não relacional
--- 

### Instalação e Setup da Aplicação

- Execute os comandos a baixo após clonar o projeto
- Crie uma pasta `data` para salvar os dados do `mongo`: `mkdir data && cd data && mkdir mongodb && cd mongodb && mkdir database`

```
docker-compose build
docker-compose up
docker-compose exec app bash
rake db:create
rake db:migrate
rake db:seed
```

### Comportamento

- Para validar ***- Uso manual de controle de transação (begin, commit, rollback)*** acesse: `/checks/relations/control_transaction`
  - Parametro `force_error=true` cai em fluxo onde é feito `rollback`
- Para validar ***- Persistência de dados em cache*** acesse: `/checks/caches`
- Para validar ***Persistência de escrita em um banco relacional*** acesse `/checks/relations/writing` e `/checks/relations/reading` para validar a escrita
- Para validar ***Leitura em banco não relacional*** acesse `/checks/no_relations`

### Para mais detalhes

- Para validar o código basta acessar as `controllers` e verificar como está o código.