# Yocto RK322x Starter

## Objetivo

Criar uma base Yocto para dispositivos RK322x usando interface gráfica leve com Wayland/Sway.

## Componentes planejados

- Poky;
- meta-openembedded;
- meta-rockchip ou camada compatível;
- camada customizada `meta-rk322x`;
- Sway;
- Waybar;
- Wofi;
- Foot;
- XWayland.

## Fluxo geral

```bash
git clone git://git.yoctoproject.org/poky
cd poky
source oe-init-build-env
bitbake-layers add-layer ../meta-openembedded/meta-oe
bitbake-layers add-layer ../meta-rk322x
bitbake core-image-minimal
```

## Problemas comuns

- branch incompatível entre camadas;
- URL de camada inexistente;
- dependências ausentes;
- kernel/DTB incompatível;
- build pesado para máquina fraca.

## Observação

Este projeto exige testes incrementais. Primeiro validar imagem mínima, depois interface gráfica.
