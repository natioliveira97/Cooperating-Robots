# Log

## 26-09-2019

> [INSTALAÇÂO] Instalei o ubuntu 16.04 na máquina cam, porque o ubuntu 18.08 não estava conectando com as cameras videre usando ROS

## 27-09-2019

> [INSTALAÇÂO] Ao chegar no LARA, o computador cam não ligou, tive que fazer uma nova instalação do ubuntu 16.06 e refazer toda a instalação das bibliotecas e ROS kinetic.

> Os drivers do kinect estão funcionando e as imagens estão sendo capturadas.

## 27-09-2019

> [PROBLEMA] [RESOLVIDO] Novamente o computador não quis ligar. Abri o gabinete e limpei as peças, com isso o PC voltou a funcionar.

> Rodei um módulo de ROS para captura de imagens com as câmeras videre, porém não funcionou.

## 12-10-2019

> [RESOLVIDO] Encontrei o driver camera1394 que roda as câmeras. Para instalá-lo é necessário clonar o repositório https://github.com/ros-drivers/camera1394.git e rodar o comando:

```
rosdep install camera1394
rosmake camera1394
```
> Baixei o software coriander para pegar informações de fábrica da câmeras

> [PROBLEMA] As câmeras com indicação color não são totalmente interpretadas pelo driver. Ficam com linhas pretas na imagem recolhida.

## 04-11-2019

> [RESOLVIDO] Criado módulo de ros que limpa as imagens com linhas pretas e publica a nova imagem. Nova imagem é menor que a imagem original.

## 05-11-2019

> [PESQUISA] Aprendi a usar o módulo de calibração de câmeras. As imagens menores das câmeras color ainda podem ser um problema. 

## 08-11-2019

> [PROBLEMA] Ununbu não coloca acento nos textos

> [RESOLVIDO] Para arrumar os acentos rodar:

    setxkbmap -model abnt2 -layout br -variant abnt2
    
> Calibração das cameras videre. Coloquei label em cada uma para facilitar.

    cam 1 - 0055050400053117
    cam 2 - 0055050400133117
    cam 3 - 0055050400133118
    cam 4 - 0055050400053118
    cam 5 - 0055050400053107
    cam 6 - 0055050400133107
    cam 7 - 0055050300032658
    cam 8 - 0055050300052658