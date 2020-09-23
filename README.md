<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">buildroot-bme280-mqtt</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
<!-- [![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/issues) -->
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---


## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Test](#test)
- [Authors](#authors)

## 🧐 About <a name = "about"></a>

Intégration du driver BME280 Raspberry pi disponible [ici](https://github.com/andreiva/raspberry-pi-bme280) dans **Buildroot** et transfert des données à l'aide du protocole MQTT

## 🏁 Getting Started <a name = "getting_started"></a>

Ces instructions vous permettront d'obtenir une copie du projet opérationnel sur votre machine locale à des fins de développement et de test.

### Prerequisites

```
$ wget http://www.buildroot.org/downloads/buildroot-2019.11.tar.bz2

$ git clone https://github.com/2brams/buildroot-bme280-mqtt

$ cd buildroot-2019.11

$ make BR2_EXTERNAL=../path/external/Std raspberry_bme280_defconfig

$ make menuconfig

sélectionner les packages suivants:
- openssh
- wiringPi
- mosquitto
- i2c-tools
- bme280 (external)

$ make	

Copier l'image sur la carte SD	
$ sudo dd if=output/images/sdcard.img of=/dev/mmcblk0
```


## 🔧 Test  <a name = "test"></a>

```
Pour une Raspberry pi avec une ip addr 10.0.4.203

Depuis le PC
$ mosquitto_sub -h 10.0.4.203 -t capteurs
{"sensor":"bme280", "humidity":31.76, "pressure":1016.56,"temperature":26.25, "altitude":-29.61, "timestamp": 1579276473}
```

## ✍️ Authors <a name = "authors"></a>

- [@2brams](https://github.com/2brams)

