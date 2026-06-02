# SENTINELA-AI — visão geral

## Objetivo

Criar uma IA local para apoiar suporte técnico, consulta a documentação interna e automação de tarefas de infraestrutura.

## Componentes

- Ollama;
- Open WebUI;
- RAG/base de conhecimento;
- ferramentas internas;
- integração futura com GLPI;
- integração futura com Zabbix.

## Casos de uso

- responder dúvidas de suporte;
- consultar procedimentos;
- resumir chamados;
- consultar alertas;
- orientar troubleshooting;
- gerar comandos e checklists.

## Arquitetura sanitizada

```text
Usuário
  ↓
Interface Web / Chat
  ↓
Modelo local
  ↓
Base de conhecimento RAG
  ↓
Ferramentas internas
  ├── GLPI
  └── Zabbix
```

## Segurança

A IA não deve ter acesso irrestrito ao ambiente. Use:
- autenticação;
- logs;
- permissões mínimas;
- validação humana para ações críticas.
