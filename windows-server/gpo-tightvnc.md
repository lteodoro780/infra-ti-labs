# Deploy TightVNC via GPO

Guia sanitizado para instalação do TightVNC via GPO.

## Ideia geral

1. Baixar MSI oficial.
2. Colocar o instalador em um compartilhamento acessível por computadores do domínio.
3. Criar GPO de instalação de software.
4. Aplicar parâmetros de senha e configuração via registro ou MST.
5. Testar em uma OU pequena antes de aplicar em produção.

## Caminho exemplo

```text
\\dominio.local\SYSVOL\dominio.local\scripts\TightVNC\tightvnc.msi
```

## Validação no cliente

```cmd
gpupdate /force
gpresult /r
```

## Observações

- Use ambientes de teste.
- Não publique senhas VNC em scripts públicos.
- Prefira exemplos sanitizados no GitHub.
