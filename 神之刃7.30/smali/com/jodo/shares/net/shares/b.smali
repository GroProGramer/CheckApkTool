.class public final Lcom/jodo/shares/net/shares/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/shares/net/shares/b;->a:Z

    sput-boolean v0, Lcom/jodo/shares/net/shares/b;->b:Z

    sput-object v1, Lcom/jodo/shares/net/shares/b;->c:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/jodo/shares/net/shares/b;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/i;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jodo/shares/net/jd/providers/downloads/i;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v4, Lcom/jodo/shares/net/shares/b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/jodo/shares/net/shares/b;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v4}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/k;-><init>()V

    :goto_0
    invoke-direct {v4, v0}, Lcom/jodo/shares/net/shares/b;->b(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    move-wide v0, v2

    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "uri"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    :cond_2
    :goto_2
    :sswitch_0
    return-wide v0

    :cond_3
    cmp-long v5, v0, v2

    if-eqz v5, :cond_4

    :try_start_1
    const-string v5, "status"

    invoke-direct {v4, v0, v1, v5}, Lcom/jodo/shares/net/shares/b;->b(JLjava/lang/String;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_4
    :goto_3
    invoke-direct {v4}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/l;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/l;-><init>(Landroid/net/Uri;)V

    const-string v1, "gamelab"

    invoke-virtual {v0, v1, p2}, Lcom/jodo/shares/net/jd/providers/downloads/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jodo/shares/net/jd/providers/downloads/l;

    const-string v1, ".apk"

    const-string v5, ""

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/l;->a(Ljava/lang/CharSequence;)Lcom/jodo/shares/net/jd/providers/downloads/l;

    invoke-virtual {v0, p3}, Lcom/jodo/shares/net/jd/providers/downloads/l;->b(Ljava/lang/CharSequence;)Lcom/jodo/shares/net/jd/providers/downloads/l;

    invoke-virtual {v0}, Lcom/jodo/shares/net/jd/providers/downloads/l;->a()Lcom/jodo/shares/net/jd/providers/downloads/l;

    invoke-virtual {v0}, Lcom/jodo/shares/net/jd/providers/downloads/l;->b()Lcom/jodo/shares/net/jd/providers/downloads/l;

    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/l;->a(Ljava/lang/String;)Lcom/jodo/shares/net/jd/providers/downloads/l;

    :cond_5
    :goto_4
    invoke-virtual {v4, v0}, Lcom/jodo/shares/net/shares/b;->a(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_2

    :sswitch_1
    invoke-virtual {v4, v0, v1}, Lcom/jodo/shares/net/shares/b;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/jodo/shares/net/shares/b;->a([J)V

    goto :goto_3

    :sswitch_2
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/jodo/shares/net/shares/b;->a([J)V

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v1, "gamelab"

    invoke-virtual {v0, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v1, ".apk"

    const-string v5, ""

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v1, v5, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    :goto_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_4

    :cond_7
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/k;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/k;->a([J)Lcom/jodo/shares/net/jd/providers/downloads/k;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jodo/shares/net/shares/b;->b(Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b(JLjava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/k;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/k;->a([J)Lcom/jodo/shares/net/jd/providers/downloads/k;

    move-result-object v0

    :goto_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/jodo/shares/net/shares/b;->b(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/i;

    check-cast p1, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-virtual {v0, p1}, Lcom/jodo/shares/net/jd/providers/downloads/i;->a(Lcom/jodo/shares/net/jd/providers/downloads/k;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/DownloadManager;

    check-cast p1, Landroid/app/DownloadManager$Query;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/jodo/shares/net/jd/providers/downloads/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    const-string v0, "status"

    invoke-direct {p0, p1, p2, v0}, Lcom/jodo/shares/net/shares/b;->b(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;)J
    .locals 2

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/i;

    check-cast p1, Lcom/jodo/shares/net/jd/providers/downloads/l;

    invoke-virtual {v0, p1}, Lcom/jodo/shares/net/jd/providers/downloads/i;->a(Lcom/jodo/shares/net/jd/providers/downloads/l;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/DownloadManager;

    check-cast p1, Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/k;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/jodo/shares/net/shares/b;->b(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final varargs a([J)V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/i;

    invoke-virtual {v0, p1}, Lcom/jodo/shares/net/jd/providers/downloads/i;->a([J)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/b;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0
.end method

.method public final b(J)[I
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/k;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/k;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/k;->a([J)Lcom/jodo/shares/net/jd/providers/downloads/k;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/jodo/shares/net/shares/b;->b(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v3, "bytes_so_far"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "total_size"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method public final c(J)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "local_uri"

    invoke-direct {p0, p1, p2, v0}, Lcom/jodo/shares/net/shares/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "local_filename"

    invoke-direct {p0, p1, p2, v0}, Lcom/jodo/shares/net/shares/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(J)Ljava/lang/String;
    .locals 1

    const-string v0, "uri"

    invoke-direct {p0, p1, p2, v0}, Lcom/jodo/shares/net/shares/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
