# GLPI API — Chamados

## Objetivo

Automatizar consultas e ações em chamados do GLPI.

## Endpoint exemplo

```text
https://glpi.example.local/apirest.php
```

## Fluxo básico

1. Autenticar sessão.
2. Consultar chamados.
3. Criar acompanhamento ou solução.
4. Encerrar sessão.

## Endpoints comuns

- iniciar sessão;
- buscar chamado;
- listar chamados;
- adicionar acompanhamento;
- solucionar chamado;
- encerrar sessão.

## Exemplo de headers

```text
App-Token: APP_TOKEN_EXEMPLO
Session-Token: SESSION_TOKEN_EXEMPLO
```

## Variáveis recomendadas

```env
GLPI_URL=https://glpi.example.local/apirest.php
GLPI_APP_TOKEN=troque_este_valor
GLPI_USER_TOKEN=troque_este_valor
```

## Exemplo conceitual de fluxo (integração com IA)

```text
1. IA recebe pergunta do usuário
2. Serviço interno consulta GLPI
3. GLPI retorna dados do chamado
4. IA resume o estado do chamado
5. Operador decide se acompanha, soluciona ou escala
```

## Segurança

Nunca publique `App-Token`, `User-Token` ou `Session-Token` reais em repositório público.
