# Boas práticas para RAG em infraestrutura

## O que indexar

- procedimentos;
- FAQs;
- documentação técnica;
- troubleshooting;
- inventário sanitizado;
- manuais internos permitidos.

## O que não indexar

- senhas;
- tokens;
- dados pessoais;
- dumps;
- arquivos confidenciais;
- logs sensíveis.

## Problema comum

A IA retorna apenas o nome do arquivo, mas não responde.

## Possíveis causas

- chunk muito pequeno;
- documento mal estruturado;
- pergunta sem contexto;
- embedding ruim;
- fonte contém pouca explicação;
- busca retorna trecho irrelevante.

## Melhorias

- criar documentos em Markdown;
- usar títulos claros;
- escrever respostas diretas;
- separar por assunto;
- adicionar exemplos;
- remover ruído.
