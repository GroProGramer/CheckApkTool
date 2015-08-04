.class final Lcom/jodo/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/TypeAdapterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jodo/gson/Gson;",
            "Lcom/jodo/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/jodo/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/jodo/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v1

    new-instance v0, Lcom/jodo/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v0, p0, v1}, Lcom/jodo/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/jodo/gson/internal/bind/TypeAdapters$22;Lcom/jodo/gson/TypeAdapter;)V

    goto :goto_0
.end method
