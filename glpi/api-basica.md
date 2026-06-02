# GLPI API Básica

Endpoint exemplo:

```text
https://glpi.example.local/apirest.php
```

## Fluxo básico

1. Autenticar sessão.
2. Consultar chamados.
3. Criar acompanhamento ou solução.
4. Encerrar sessão.

## Exemplo de headers

```text
App-Token: APP_TOKEN_EXEMPLO
Session-Token: SESSION_TOKEN_EXEMPLO
```

## Segurança

Nunca publique `App-Token`, `User-Token` ou `Session-Token` reais.
