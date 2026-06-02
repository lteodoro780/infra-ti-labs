# Infra TI Labs

![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![Área](https://img.shields.io/badge/área-infraestrutura%20de%20TI-blue)
![Licença](https://img.shields.io/badge/licença-MIT-green)

Repositório de estudos, laboratórios e documentações práticas sobre infraestrutura de TI, redes, Linux, Windows Server, automação, monitoramento, inventário, GLPI, Zabbix, OCS Inventory e IA local aplicada ao suporte técnico.

> Este repositório usa exemplos fictícios e sanitizados. Nenhum IP real, senha, token, hostname interno, dado institucional ou informação sensível deve ser publicado aqui.

## Objetivo

Organizar aprendizados e procedimentos técnicos usados em ambientes de laboratório e infraestrutura, criando uma base consultável para troubleshooting, automação e evolução profissional.

Este repositório também serve como portfólio técnico, demonstrando experiência prática com:

- administração de servidores Linux e Windows;
- Active Directory, GPO e PowerShell;
- monitoramento com Zabbix;
- gestão de chamados com GLPI;
- inventário com OCS Inventory;
- redes, rotas, diagnóstico e descoberta de hosts;
- Docker, automação e scripts;
- IA local aplicada à infraestrutura.

## Estrutura

```text
infra-ti-labs/
├── linux/                 # Servidores Linux, SSH, Docker, Apache, MariaDB
├── windows-server/        # AD, GPO, PowerShell e administração Windows
├── redes/                 # Diagnóstico, traceroute, sub-redes e switches
├── zabbix/                # Monitoramento, API, hosts, triggers e problemas
├── glpi/                  # Chamados, LDAP, API e troubleshooting
├── ocs-inventory/         # Inventário, agentes, Apache e banco de dados
├── automacao/             # Scripts e rotinas de automação
├── ia-local/              # Ollama, Open WebUI, RAG e agentes locais
├── projetos/              # Projetos sanitizados e estudos de caso
└── scripts/               # Scripts PowerShell e Bash reutilizáveis
```

## Laboratórios principais

| Área | Conteúdo |
|---|---|
| Linux | SSH, Docker, permissões, serviços, logs e troubleshooting |
| Windows Server | AD, GPO, deploy de software, inventário e PowerShell |
| Redes | ping, traceroute, ARP, rotas, sub-redes e descoberta de hosts |
| Zabbix | hosts, grupos, triggers, problemas, API e monitoramento |
| GLPI | chamados, LDAP, API, perfis, logs e erros comuns |
| OCS Inventory | instalação, agentes, Apache, MariaDB e inventário |
| IA Local | Ollama, Open WebUI, RAG e automações de suporte |

## Aviso de segurança

Antes de publicar qualquer arquivo, confira se não contém:

- IP interno real;
- hostname real;
- usuário ou senha;
- token de API;
- arquivo `.env`;
- backup, dump SQL ou log bruto;
- prints de ambiente interno;
- nomes de pessoas, setores ou dados institucionais sensíveis.

Use sempre exemplos como:

```text
192.168.100.10
server01.local
glpi.example.local
zabbix.example.local
usuario.exemplo
```

## Como usar este repositório

Clone o projeto:

```bash
git clone https://github.com/lteodoro780/infra-ti-labs.git
cd infra-ti-labs
```

Consulte os diretórios conforme o tema desejado.

## Roadmap

- [ ] Adicionar checklist de instalação Debian Server
- [ ] Adicionar troubleshooting completo de GLPI + LDAP
- [ ] Adicionar scripts PowerShell para Active Directory
- [ ] Adicionar exemplos de consulta à API do Zabbix
- [ ] Adicionar guia de deploy TightVNC via GPO
- [ ] Adicionar laboratório de IA local para suporte técnico
- [ ] Adicionar estudo sanitizado de reaproveitamento de TV Box com Linux

## Autor

**theodoro luis**  
Infraestrutura de TI | Linux | Redes | Automação | IA Local  
GitHub: [@lteodoro780](https://github.com/lteodoro780)

## Licença

Este projeto está sob licença MIT. Consulte o arquivo [LICENSE](LICENSE).
