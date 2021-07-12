# Rep0x08 Android 缺陷应用漏洞攻击实验

### 1. 实验目的

- 理解 Android 经典的组件安全和数据安全相关代码缺陷原理和漏洞利用方法；
- 掌握 Android 模拟器运行环境搭建和 ADB 使用；

### 2. 实验要求

- [x] 详细记录实验环境搭建过程；

- [x] 至少完成以下 [实验](https://github.com/c4pr1c3/Android-InsecureBankv2/tree/master/Walkthroughs) ：

    - [x] Developer Backdoors

    - [x] Insecure Logging mechanism

    - [x] Android Application Patching + Weak Auth

    - [x] Exploiting Android Broadcast Receivers

    - [x] Exploiting Android Content Provider

- [x] （可选）使用不同于 [Walkthroughs](https://github.com/c4pr1c3/Android-InsecureBankv2/tree/master/Walkthroughs) 中提供的工具或方法达到相同的漏洞利用攻击效果；

    - 推荐 [drozer](https://github.com/mwrlabs/drozer)

### 3. 实验环境

- Android Studio - 4.1.2

    - Runtime Version: 1.8.0_242-release-1644-b01 amd64

    - VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o

- [Android-InsecureBankv2](https://github.com/c4pr1c3/Android-InsecureBankv2)

    - Python (Virtual Environment) - 2.7.18

- Tools List

    - [JADX decompiler](https://github.com/skylot/jadx) - dev

    - [dex2jar](https://sourceforge.net/projects/dex2jar/)

    - apktool
        
        - v2.5.0

        - Default Installation

    - SignApk

        - Default Installation

    - SQLite - 3.36.0

    - SuperSU - v2.82

    - zlib-flate - 1.0

    - Memory Analyzer - 1.10.0

### 4. 实验过程

- [Report 8.0 - Preparations before HACKING](report/report0x00.md)

- [Report 8.1 - Developer Backdoors](report/report0x01.md)

- [Report 8.2 - Insecure Logging mechanism](report/report0x02.md)

- [Report 8.3 - Android Application Patching + Weak Auth](report/report0x03.md)

- [Report 8.4 - Exploiting Android Broadcast Receivers](report/report0x04.md)

- [Report 8.5 - Exploiting Android Content Provider](report/report0x05.md)

- [Report 8.6 - Exploit Android Keyboard Cache](report/report0x06.md)

- [Report 8.7 - Exploiting Android Activities](report/report0x07.md)

- [Report 8.8 - Exploiting Android Backup Functionality](report/report0x08.md)

- [Report 8.9 - Exploiting Android Pasteboard](report/report0x09.md)

- [Report 8.10 - Exploiting Weak Cryptography](report/report0x0A.md)

- [Report 8.11 - Intent Sniffing](report/report0x0B.md)

- [Report 8.12 - Reading Android Memory](report/report0x0C.md)



### 5. 说明

- 由于 *Decompiling Android applications* 以及 *Using Apktool – APK to Smali* 在 Android 漏洞利用小实验中会体现，因此不单独用实验报告做出说明。

- 由于 Super Root 没成功，因此跳过实验：

    - *Android Debugging using JDWP*

    - *Bypass Android Root Detection*

    - *Proxying Android Traffic on Device*