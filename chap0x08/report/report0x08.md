# Exploiting Android Backup Functionality

### 1. 实验过程

- 在 `AndroidManifest.xml` 中找到数据备份声明

    ![img](../img/0x08-backup.PNG)

- 使用 (Account, Password) 登录

    ![img](../img/connection-app.PNG)

- 对 InsecureBankv2 进行备份

    ```
    C:> adb backup –apk –shared com.android.insecurebankv2
    ```

    ![img](../img/0x08-backup-confirmation.PNG)

- 将备份文件转化为可读样式如下：

    ```
    $ cat backup.ab | (dd bs=24 count=0 skip=1; cat) | zlib-flate -uncompress > backup_compressed.tar
    ```

    ![img](../img/0x08-readable-file.PNG)

### 2. 遇到的问题

- **【UNSOLVED】** 成功备份但无法将 .ab 文件转化为可读样式

    尝试过如下方法：

    ![img](../img/0x08-p1-method1.PNG)

    ![img](../img/0x08-p1-method2.PNG)

    ![img](../img/0x08-p1-method3.PNG)

### 3. 参考资料

- [数据备份概览 | Android Developers](https://developer.android.com/guide/topics/data/backup)