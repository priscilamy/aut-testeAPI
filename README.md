
## Automação de Teste de Contrato - API

API que retorna informações sobre os casos de Covid-19. 
Teste de contrato, validando a estrutura da resposta da requisição sobre informações de Covid-19 no Brasil.


### Para execução

1. Clonar o projeto

2. Executar no terminal: bundle install

3. Executar no terminal: cucumber

(Obs: Na documentação do swagger para o endpoint /v3/covid-19/countries/{country} é descrito que a propriedade "continent" é number.
No entato, verifiquei no retorno que a mesma é string, portanto informei string no schema.)