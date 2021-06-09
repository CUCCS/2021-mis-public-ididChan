# Q & A

- 真机如何启用 ADB 调试功能？

    **【ANS】** 详见 [Report 6.2 - Hello World 系列实验](report/report0x02.md) 中 `Q & A` -> `Hello World v1`

- 真机和电脑建立调试连接过程你有发现哪些「安全策略」和「安全机制」？请思考其保护作用和意义。

    **【ANS】** 

    *（注：由于无 Android 机因此参考[CUC MIS GitBook - chap0x06 的总结]()）

    > - **Cupcake 1.5**，基于ProPolice防止缓冲区溢出攻击，增强内存管理的安全性；
    > 
    > - **Froyo 2.2**，引入安卓设备管理API，支持企业级安全策略实现；
    > 
    > - **Gingerbread 2.3**，引入mmap_min_addr机制防御权限提升类攻击；
    > 
    > - **Honeycomb 3.0**，文件系统加密。用户口令存储使用更安全的加盐散列算法，对抗暴力破解和还原口令类攻击；
    > 
    > - **Ice Cream Sandwich 4.0**，实现地址空间随机化（ASLR），对抗内存破坏类攻击。引入KeyChain机制，改进用户密钥存储和证书管理；
    > 
    > - **Jelly Bean 4.2**，APP使用短信发送权限需要得到用户的显式授权同意。支持应用验证API，安全类APP可以基于此API对APK的下载、安装进行检查和拦截。4.2.2版本引入了“安全USB调试”机制（真机ADB连接强制 单向身份认证 ：手机认证PC机身份）；
    > 
    > - **KitKat 4.4**，禁止第三方APP获取电池使用量信息，避免恶意程序恶意消耗手机电量；
    > 
    > - **Lolipop 5.0**，使用ART 运行时取代 Dalvik 成为平台默认设置。通知现在显示在用户的锁定屏幕上。用户可以选择保护敏感信息不被公开，此时系统会自动删减通知显示的文本。引入了对 64 位系统的支持，64 位支持也可改进用于加密的 OpenSSL 的性能。WebView默认情况下，系统会阻止混合内容和第三方 Cookie。TLSv1.2 和 TLSv1.1 协议现已启用。MD5、3DES、导出和静态密钥 ECDH 加密套件现已停用。首选使用前向保密性（ Forward Secrecy ）加密套件（ECDHE 和 DHE）。
    > 
    > - **Marshmallow 6.0**，用户可直接在运行时管理应用权限。这种模式让用户能够更好地了解和控制权限，同时为应用开发者精简了安装和自动更新过程。用户可为所安装的各个应用分别授予或撤销权限。对于使用 WLAN API 和 Bluetooth API 的应用，Android 移除了对设备本地硬件标识符的编程访问权。WifiInfo.getMacAddress() 方法和 BluetoothAdapter.getAddress() 方法现在会返回常量值 02:00:00:00:00:00 。当运行 Android 6.0（API 级别 23）的设备发起后台 WLAN 或蓝牙扫描时，在外部设备看来，该操作的发起来源是一个 随机化 MAC 地址。
    > 
    > - **Nougat 7.0**，移除了三项隐式广播，以帮助优化内存使用和电量消耗。为了提高私有文件的安全性，面向 Android 7.0 或更高版本的应用私有目录被限制访问(0700)。名为 Crypto 的 JCA 提供程序已弃用，因为它仅有的 SHA1PRNG 算法为弱加密。应用无法再使用 SHA1PRNG（不安全地）派生密钥。对于面向 Android 7.0 的应用，Android 框架执行的 StrictMode API 政策禁止在应用外部公开 file:// URI。
    > 
    > - **Oreo 8.0**，后台执行限制（默认情况下，这些限制仅适用于针对 O 的应用。不过，用户可以从 Settings 屏幕为任意应用启用这些限制，即使应用并不是以 O 为目标平台）。后台应用接收位置更新频率被降低。实现 HttpsURLConnection 时不会执行不安全的 TLS/SSL 协议版本回退，不再支持 SSLv3。使用安全计算 (SECCOMP) 过滤器来过滤所有应用。允许的系统调用列表仅限于通过 bionic 公开的系统调用。应用的 WebView 对象将在多进程模式下运行。网页内容在独立的进程中处理，此进程与包含应用的进程相隔离，以提高安全性。在相同设备上运行但具有不同签署密钥的应用将不会再看到相同的 Android ID（即使对于同一用户来说，也是如此）。只要签署密钥相同（并且应用未在 OTA 之前安装到某个版本的 O），ANDROID_ID 的值在软件包卸载或重新安装时就不会发生变化。即使系统更新导致软件包签署密钥发生变化，ANDROID_ID 的值也不会变化。查询 net.hostname 系统属性返回的结果为空，系统属性 net.dns1、net.dns2、net.dns3 和 net.dns4 不再可用。如果应用请求 READ_CONTACTS 权限，查询联系人的使用情况数据得到的是 近似值 而不是精确值。

- 你的手机连接过的 Wifi 信息保存在手机上什么位置？能否从中找到连过的 Wifi 的口令？

    - Path: `data/misc/wifi/wpa_supplicant.conf`

    - 可以

# 参考资料

- [How To View Saved Wifi Passwords On Android in 2021 (4 Best Methods)](https://techviral.net/view-saved-wifi-passwords-android/)