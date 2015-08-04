.class public final Lcom/jodo/shares/net/jd/providers/downloads/ac;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field private static final j:Ljava/io/File;

.field private static final k:Ljava/io/File;

.field private static final l:Ljava/io/File;

.field private static final m:Ljava/io/File;

.field private static final n:Ljava/io/File;

.field private static final o:Ljava/io/File;

.field private static final p:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->j:Ljava/io/File;

    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->k:Ljava/io/File;

    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->l:Ljava/io/File;

    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/sdcard"

    invoke-static {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->m:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v3, "/sdcard"

    invoke-static {v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->n:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v3, "/sdcard"

    invoke-static {v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->o:Ljava/io/File;

    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->p:Ljava/io/File;

    const-string v0, "Music"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a:Ljava/lang/String;

    const-string v0, "Podcasts"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->b:Ljava/lang/String;

    const-string v0, "Ringtones"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->c:Ljava/lang/String;

    const-string v0, "Alarms"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->d:Ljava/lang/String;

    const-string v0, "Notifications"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->e:Ljava/lang/String;

    const-string v0, "Pictures"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->f:Ljava/lang/String;

    const-string v0, "Movies"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->g:Ljava/lang/String;

    const-string v0, "Download"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->h:Ljava/lang/String;

    const-string v0, "DCIM"

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ac;->m:Ljava/io/File;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jodo/shares/net/jd/providers/downloads/ac;->m:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
