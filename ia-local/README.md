# IA Local

Laboratórios de IA local aplicada à infraestrutura de TI.

## Temas

- Ollama
- Open WebUI
- RAG com documentação interna sanitizada
- Agentes para suporte técnico
- Integração futura com GLPI e Zabbix

## Ideia de arquitetura

```text
Usuário -> Interface Web/Chat -> Modelo local -> Base de conhecimento -> Ferramentas internas
```

## Cuidados

- Não inserir dados sensíveis em bases públicas.
- Separar ambiente de teste e produção.
- Sanitizar documentos antes de treinar ou indexar.
