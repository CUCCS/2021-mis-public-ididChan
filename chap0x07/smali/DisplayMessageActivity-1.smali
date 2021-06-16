# 类名：DisplayMessageActivity
# 所在路径：cn/edu/cuc/misdemo/DisplayMessageActivity
.class public Lcn/edu/cuc/misdemo/DisplayMessageActivity;
# 父类名：AppCompatActivity
# 所在路径：android/support/v7/app/AppCompatActivity
.super Landroid/support/v7/app/AppCompatActivity;
# 源文件名：DisplayMessageActivity.java
.source "DisplayMessageActivity.java"

# instance fields
# 声明静态成员变量：SECRET_SEED
.field private SECRET_SEED:Ljava/lang/String;

# direct methods
# DisplayMessageActivity的构造器
.method public constructor <init>()V
    # 声明可以使用的本地寄存器范围
    # .local x -> v0 ~ v_{x-1}
    # 此处说明本方法中只能使用 v0 
    .locals 1

    .line 14
    # 执行对象的构造函数
    # 用 p0 标识该方法所属类的实例本身，即：this
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    # 把 "idchannov" 放入本地寄存器 v0
    const-string v0, "idchannov"

    .line 16
    # 根据字段 ID 将 v0 寄存器的值存入实例对象的引用字段 SECRET_SEED
    iput-object v0, p0, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->SECRET_SEED:Ljava/lang/String;

    return-void
.end method

# initView() 方法
.method private initView()V
    # 可使用的本地寄存器：v0 ~ v3
    .locals 4

    .line 27

    # 调用 DisplayMessageActivity 对象的方法 getIntent()
    invoke-virtual {p0}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->getIntent()Landroid/content/Intent;

    # 将 getIntent() 的调用结果赋值给 v0
    move-result-object v0

    # 把 "cn.edu.cuc.misdemo.MSG" 放入本地寄存器 v1
    const-string v1, "cn.edu.cuc.misdemo.MSG"

    .line 28
    # 调用 Intent 对象的 getStringExtra() 方法
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    # 将 getStringExtra() 的调用结果赋值给 v0
    move-result-object v0

    .line 30
    # 将 SECRET_SEED 的值赋给 v1
    iget-object v1, p0, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->SECRET_SEED:Ljava/lang/String;

    # 调用 DisplayMessageActivity 对象的 md5() 方法，并向之传递 p0 与 v1 中存放的值
    invoke-direct {p0, v1}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->md5(Ljava/lang/String;)Ljava/lang/String;

    # 将 md5() 的调用结果赋值给 v1
    move-result-object v1

    # 把 0x0 放入本地寄存器 v2
    const/4 v2, 0x0

    # 把 0x4 放入本地寄存器 v3
    const/4 v3, 0x4

    # 调用 String() 对象的 substring() 方法，并向之传递 v1, v2, v3 中存放的值
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    # 将 substring() 的调用结果赋值给 v1
    move-result-object v1

    .line 35

    # 实例化一个 TextView 对象并存入本地寄存器 v2 中
    new-instance v2, Landroid/widget/TextView;

    # 调用 TextView() 方法，并向之传递 v2, p0 中存放的值，
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    # 把 0x42200000 放入本地寄存器 v3
    const/high16 v3, 0x42200000    # 40.0f

    .line 37
    # 调用 TextView 对象的 setTextSize() 方法，并向之传递 v2, v3 中存放的值
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    # 调用 TextView 对象的 equalsIgnoreCase() 方法，并向之传递 v0, v1 中存放的值
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    # 将 setTextSize() 的调用结果赋值给 v0 
    move-result v0

    # 如果 v0 不等于 0 则跳转到 :cond_0 分支
    if-nez v0, :cond_0

    # 把 0x7f0b0025 放入本地寄存器 v0
    const v0, 0x7f0b0025

    .line 39
    # 调用 DisplayMessageActivity 对象的 getString() 方法，并向之传递 p0, v0 中存放的值
    invoke-virtual {p0, v0}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->getString(I)Ljava/lang/String;

    # 将 getString() 的调用结果赋值给 v0
    move-result-object v0

    # 调用 TextView 对象的 setText() 方法，并向之传递 v2, v0 中存放的值
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # 返回 :goto_0 标签所在位置
    goto :goto_0

    # cond_0 分支开始
    :cond_0
    # 把 0x7f0b0024 放入本地寄存器 v0
    const v0, 0x7f0b0024

    .line 41
    # 调用 DisplayMessageActivity 对象的 getString() 方法，并向之传递 p0, v0 中存放的值
    invoke-virtual {p0, v0}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->getString(I)Ljava/lang/String;

    # 将 getString() 的调用结果赋值给 v0
    move-result-object v0

    # 调用 TextView() 对象的 setText() 方法，并向之传递 v2, v0 中存放的值
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # 设置 :goto_0 标签
    :goto_0
    # 把 0x7f070014 放入本地寄存器 v0
    const v0, 0x7f070014

    .line 44
    # 调用 DisplayMessageActivity 对象的 findViewById() 方法，并向之传递 p0, v0 中存放的值
    invoke-virtual {p0, v0}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->findViewById(I)Landroid/view/View;

    # 将 findViewById() 的调用结果赋值给 v0
    move-result-object v0

    # 检查 v0 中的对象引用是否可以转换成 ViewGroup 对应类型的实例。如不可转换，抛出ClassCastException 异常，否则继续执行
    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    # 调用 ViewGroup 对象的 addView() 方法，并向之传递 v0, v2 中存放的值
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

# md5() 方法
.method private md5(Ljava/lang/String;)Ljava/lang/String;
    # 可使用的本地寄存器：v0 ~ v2
    .locals 3

    # 第一个 try 开始
    :try_start_0
    # 把 "MD5" 放入本地寄存器 v0
    const-string v0, "MD5"

    .line 51
    # 调用 MessageDigest 对象的静态方法 getInstance()，并向之传递 v0 中存放的值
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    # 将 getInstance() 的调用结果赋值给 v0
    move-result-object v0

    .line 52
    # 调用 String 对象的 getBytes() 方法，并向之传递 p1 中存放的值
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    # 将 getBytes() 的调用结果赋值给 p1
    move-result-object p1

    # 调用 MessageDigest 对象的 update() 方法，并向之传递 v0, p1 中存放的值
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    # 调用 MessageDigest 对象的 digest() 方法，并向之传递 v0 中存放的值
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    # 将 digest() 的调用结果赋值给 p1
    move-result-object p1

    .line 56
    # 实例化一个 StringBuffer 对象并存入本地寄存器 v0 中
    new-instance v0, Ljava/lang/StringBuffer;

    # 调用 StringBuffer 对象的构造函数
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    # 把 0x0 放入本地寄存器 v1 中
    const/4 v1, 0x0

    .line 57
    # 设置 :goto_0 标签
    :goto_0
    # 计算 p1 寄存器中数组引用的元素长度并将长度存入 v2 寄存器
    array-length v2, p1

    # 如果 {v1 中存放的值} >= {v2 中存放的值} 则跳转到 :cond_0 分支
    if-ge v1, v2, :cond_0

    .line 58
    # 从 byte 数组获取一个 byte 值存入 v2，数组的引用存入 p1，需获取的元素的索引存入 v1
    aget-byte v2, p1, v1

    # 计算 ( v2 & 0xff ) 并将结果存入 v2
    and-int/lit16 v2, v2, 0xff

    # 调用 Integer 对象的静态方法 toHexString(), 并向之传递 v2 中存放的值
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    # 将 toHexString() 的调用结果赋值给 v2
    move-result-object v2

    # 调用 StringBuffer 对象的 append() 方法，并向之传递 v0, v2 中存放的值
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    # 计算 ( v1 + 0x1 ) 并将结果存入 v1
    add-int/lit8 v1, v1, 0x1

    # 返回 :goto_0 标签所在位置
    goto :goto_0

    .line 59
    # cond_0 分支开始
    :cond_0
    # 调用 StringBuffer 对象的 toString() 方法，并向之传递 v0 中存放的值
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    # 将 toString() 的调用结果赋值给 p1
    move-result-object p1
    # 第一个 try 结束
    :try_end_0
    # 伪指令 .catch / .catchall
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    # 返回在 p1 寄存器的对象引用
    return-object p1

    # 第一个 catch 开始
    :catch_0
    # 当方法调用抛出异常将移动异常对象引用存入到 p1
    move-exception p1

    .line 62
    # 调用 NoSuchAlgorithmException 对象的 printStackTrace() 方法，并向之传递 p1 中存放的值
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    # 把 NULL 放入本地寄存器 p1 中
    const-string p1, ""

    # 返回在 p1 寄存器的对象引用
    return-object p1
.end method


# virtual methods
# onCreate() 方法
.method protected onCreate(Landroid/os/Bundle;)V
    # 无可使用的本地寄存器
    .locals 0

    .line 20
    # 父类 AppCompatActivity 的虚拟方法 onCreate()，并向之传递 p0, p1中存放的值
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    # 把 0x7f09001a 放入本地寄存器 p1 中
    const p1, 0x7f09001a

    .line 21
    # 调用 DisplayMessageActivity 对象的 setContentView() 方法，并向之传递 p0, p1 中存放的值
    invoke-virtual {p0, p1}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->setContentView(I)V

    .line 23
    # 不解析，直接调用 DisplayMessageActivity 对象的 initView() 方法
    invoke-direct {p0}, Lcn/edu/cuc/misdemo/DisplayMessageActivity;->initView()V

    return-void
.end method