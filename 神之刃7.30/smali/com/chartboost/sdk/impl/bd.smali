.class public final Lcom/chartboost/sdk/impl/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bd$c;,
        Lcom/chartboost/sdk/impl/bd$a;,
        Lcom/chartboost/sdk/impl/bd$b;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/chartboost/sdk/impl/bd;


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/h;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/impl/bd;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "CBImagesDirectory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bd;)Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/j$a;
    .locals 5

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/j$a;

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ".png"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 104
    new-instance v0, Lcom/chartboost/sdk/Libraries/j$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p1, v1, v2}, Lcom/chartboost/sdk/Libraries/j$a;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/chartboost/sdk/Libraries/h;)V

    .line 105
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bd;->b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bd$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/chartboost/sdk/impl/bd;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/impl/bd;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/chartboost/sdk/impl/bd;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/impl/bd;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/chartboost/sdk/impl/bd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bd;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/impl/bd;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/bd;->c:Lcom/chartboost/sdk/impl/bd;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bd;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bd;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bd;Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/j$a;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/j$a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/bd$a;
    .locals 2

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lcom/chartboost/sdk/impl/bd$c;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lcom/chartboost/sdk/impl/bd$c;

    .line 254
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bd$c;->a()Lcom/chartboost/sdk/impl/bd$a;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bd;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, ".png"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/bd$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/j$a;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    if-eqz p4, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    if-eqz p3, :cond_1

    .line 84
    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/bd$b;->a(Lcom/chartboost/sdk/Libraries/j$a;Landroid/os/Bundle;)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    const/4 v0, 0x0

    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/bd$b;->a(Lcom/chartboost/sdk/Libraries/j$a;Landroid/os/Bundle;)V

    .line 91
    :cond_3
    new-instance v0, Lcom/chartboost/sdk/impl/bd$a;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/bd$a;-><init>(Lcom/chartboost/sdk/impl/bd;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/bd$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->a:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->b()V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    return-void
.end method
