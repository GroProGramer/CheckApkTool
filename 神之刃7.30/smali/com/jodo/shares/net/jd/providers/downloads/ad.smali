.class public Lcom/jodo/shares/net/jd/providers/downloads/ad;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/jodo/shares/net/jd/providers/downloads/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jodo/shares/net/jd/providers/downloads/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ad;->a:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ad;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;)Lcom/jodo/shares/net/jd/providers/downloads/aj;
    .locals 3

    const-class v1, Lcom/jodo/shares/net/jd/providers/downloads/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jodo/shares/net/jd/providers/downloads/ad;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/ae;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/ae;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/jd/providers/downloads/ae;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/jodo/shares/net/jd/providers/downloads/ad;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
