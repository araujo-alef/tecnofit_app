# Tecnofit

O aplicativo foi desenvolvido para o teste técnico solicitado pela TECNOFIT em seu processo seletivo para Desenvolvedor Mobile Flutter, visando uma alta escalabilidade do produto o projeto trás em sua arquitetura uma abstração do clean architeture e uma estrutura baseada em packages (micro front-end) conxiliada com o padrão flutter modular proporcionado maior segurança, organização e praticidade para os desenvolvedores, até mesmo em situações com um grande número de equipes envolvidas no projeto.
A gerência de estado ficou por conta do MobX, que além de muito utilizado por grandes empresas se comunica muito bem com a injeção de depenências do flutter modular e também trás um ótimo equilibrio entre praticidade e segurança por ter um bloqueio arquitetural definido através de seus observables e actions.
Também preparado para as metas da empresa, foi implementado o uso de internacionalização, para uma tradução prática em casos de expansão do produto para outros países.

#### Descrição do teste
Utilizando seus conhecimentos em Flutter, crie uma tela de login atendendo aos
seguintes requisitos.
● Deve se comunicar com um backend REST (Ex: https://reqres.in).
● Design precisa ser responsivo.
● Precisa funcionar em IOS, Android e Web.
● Após logar deve navegar para outra tela, e a informação do usuário deve estar
acessível por qualquer tela subsequente.
● Pode utilizar qualquer gerenciador de estado, porém deve justificar a escolha.
Ainda que seja um teste simples, aproveite esse momento para mostrar seu
conhecimento, e acima de tudo, mostrar qual seu nível de entrega para um produto pronto para
produção.

Endereço da API: https://reqres.in

Exemplos dos Endpoints:

## Login Successful
Metodo POST que retornará statuscode 200 e um JSON contendo o "TOKEN" 

```sh
GET /api/login
```
### Requisição
```sh
{
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
}
```
### Resposta
```sh
{
    "token": "QpwL5tke4Pnpja7X4"
}
```

## Login Unsuccessful
Metodo POST que retornará statuscode 200 e um JSON contendo o "ERROR" 

```sh
GET /api/login
```
### Requisição
```sh
{
    "email": "eve.holt@reqres.in",
}
```
### Resposta
```sh
{
    "error": "Missing password"
}
```

### 

#### Dados para efetuar login com sucesso:
- email: eve.holt@reqres.in
- senha: cityslicka


Você encontrará o APK do projeto em "tecnofit-app/apk/app-release.apk"
