# GLPI API — chamados

## Objetivo

Automatizar consultas e ações em chamados do GLPI.

## Endpoints comuns

- iniciar sessão;
- buscar chamado;
- listar chamados;
- adicionar acompanhamento;
- solucionar chamado;
- encerrar sessão.

## Variáveis recomendadas

```env
GLPI_URL=https://glpi.example.local/apirest.php
GLPI_APP_TOKEN=troque_este_valor
GLPI_USER_TOKEN=troque_este_valor
```

## Exemplo conceitual de fluxo

```text
1. IA recebe pergunta do usuário
2. Serviço interno consulta GLPI
3. GLPI retorna dados do chamado
4. IA resume o estado do chamado
5. Operador decide se acompanha, soluciona ou escala
```

## Segurança

Nunca coloque token real em repositório público.
