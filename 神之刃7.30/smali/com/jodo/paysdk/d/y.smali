.class public final Lcom/jodo/paysdk/d/y;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/os/Handler;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/content/Context;

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static j:Landroid/view/WindowManager;

.field private static k:Lcom/jodo/paysdk/model/UnzipInfo;

.field private static l:Landroid/os/Handler;

.field private static m:Z

.field private static n:Z

.field private static o:Landroid/widget/RelativeLayout;

.field private static p:Landroid/widget/ProgressBar;

.field private static q:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/y;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JODO_PAYSDK_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/y;->i:Ljava/lang/String;

    new-instance v0, Lcom/jodo/paysdk/d/z;

    invoke-direct {v0}, Lcom/jodo/paysdk/d/z;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/d/y;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/d/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/jodo/paysdk/d/ab;

    invoke-direct {v3}, Lcom/jodo/paysdk/d/ab;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v5, v2

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v2, v0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".obb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/d/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v3, Lcom/jodo/paysdk/d/ac;

    invoke-direct {v3}, Lcom/jodo/paysdk/d/ac;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v5, v2

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v1, v2, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 3

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentUnzip isMainThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v0, "jodo unzip"

    const-string v1, "handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    sput-object p1, Lcom/jodo/paysdk/d/y;->k:Lcom/jodo/paysdk/model/UnzipInfo;

    sput-object p2, Lcom/jodo/paysdk/d/y;->l:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/UnzipInfo;->getStorageFolderAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/UnzipInfo;->isEnableOverride()Z

    move-result v0

    sput-boolean v0, Lcom/jodo/paysdk/d/y;->g:Z

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/UnzipInfo;->isUseCustomizedActivtiy()Z

    move-result v0

    sput-boolean v0, Lcom/jodo/paysdk/d/y;->m:Z

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/UnzipInfo;->isAutoDownloadExtFiles()Z

    move-result v0

    sput-boolean v0, Lcom/jodo/paysdk/d/y;->n:Z

    sget-boolean v0, Lcom/jodo/paysdk/d/y;->m:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/d/y;->i()V

    :cond_1
    invoke-static {p2}, Lcom/jodo/paysdk/d/y;->b(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Handler;)V
    .locals 3

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentUnzip isMainThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string v0, "jodo unzip"

    const-string v1, "handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    sput-object p1, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    sput-boolean p2, Lcom/jodo/paysdk/d/y;->g:Z

    sput-boolean p3, Lcom/jodo/paysdk/d/y;->m:Z

    if-nez p3, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/d/y;->i()V

    :cond_1
    invoke-static {p4}, Lcom/jodo/paysdk/d/y;->b(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Handler;)V
    .locals 8

    :try_start_0
    const-string v0, "jodo unzip"

    const-string v1, "before unzip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/zip/ZipFile;

    sget-object v0, Lcom/jodo/paysdk/d/y;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    sput v0, Lcom/jodo/paysdk/d/y;->e:I

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    const/16 v0, 0x400

    new-array v3, v0, [B

    const/4 v0, 0x0

    sput v0, Lcom/jodo/paysdk/d/y;->f:I

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "upZipFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dir ze.getName() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_0
    :goto_1
    sget v0, Lcom/jodo/paysdk/d/y;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jodo/paysdk/d/y;->f:I

    sget-boolean v0, Lcom/jodo/paysdk/d/y;->m:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/d/y;->a:Landroid/os/Handler;

    sget-object v4, Lcom/jodo/paysdk/d/y;->a:Landroid/os/Handler;

    const/16 v5, 0xc8

    sget v6, Lcom/jodo/paysdk/d/y;->f:I

    sget v7, Lcom/jodo/paysdk/d/y;->e:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/16 v0, 0xc8

    sget v4, Lcom/jodo/paysdk/d/y;->f:I

    sget v5, Lcom/jodo/paysdk/d/y;->e:I

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "jodo unzip"

    const-string v1, "unzip error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v4, "upZipFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file ze.getName() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jodo/paysdk/util/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/jodo/paysdk/d/y;->g:Z

    if-eqz v4, :cond_0

    :cond_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jodo/paysdk/util/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3
    const/4 v0, 0x0

    const/16 v6, 0x400

    invoke-virtual {v5, v3, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    const-string v0, "jodo unzip"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jodo unzip"

    const-string v1, "after unzip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "jodo unzip"

    const-string v1, "return result:0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method static synthetic b()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(Landroid/os/Handler;)V
    .locals 7

    const/16 v6, 0xc9

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "jodo unzip"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/d/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/y;->c:Ljava/lang/String;

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zipFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/jodo/paysdk/d/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jodo/paysdk/d/y;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/jodo/paysdk/d/y;->j:Landroid/view/WindowManager;

    sget-object v1, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/jodo/paysdk/d/y;->a:Landroid/os/Handler;

    sget-object v1, Lcom/jodo/paysdk/d/y;->a:Landroid/os/Handler;

    const/16 v2, 0xc9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d44\u6e90\u5305\u4e0d\u5b58\u5728,autoDownloadExtFiles:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/jodo/paysdk/d/y;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/jodo/paysdk/d/y;->n:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v0, "jodo unzip"

    const-string v1, "return result: 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jodo/paysdk/d/y;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0xc9

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "jodo unzip"

    const-string v1, "return result: 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "jodo unzip"

    const-string v1, "outer error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x63

    invoke-virtual {p0, v6, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, "jodo unzip"

    const-string v1, "before run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jodo/paysdk/d/aa;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/d/aa;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "jodo unzip"

    const-string v1, "after run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d()Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->j:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/paysdk/d/y;->n:Z

    return v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()Lcom/jodo/paysdk/model/UnzipInfo;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->k:Lcom/jodo/paysdk/model/UnzipInfo;

    return-object v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/y;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private static i()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    sget-object v0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/jodo/paysdk/d/y;->j:Landroid/view/WindowManager;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7d6

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x28

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_float_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_unzip_progress_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/jodo/paysdk/d/y;->p:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_unzip_below_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/jodo/paysdk/d/y;->q:Landroid/widget/TextView;

    :goto_0
    sget-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/d/y;->j:Landroid/view/WindowManager;

    sget-object v2, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_float_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_unzip_progress_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/jodo/paysdk/d/y;->p:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/y;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_unzip_below_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/jodo/paysdk/d/y;->q:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/d/y;->j:Landroid/view/WindowManager;

    sget-object v1, Lcom/jodo/paysdk/d/y;->o:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
