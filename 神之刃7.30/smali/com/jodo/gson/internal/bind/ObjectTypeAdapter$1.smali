.class final Lcom/jodo/gson/internal/bind/ObjectTypeAdapter$1;
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
    .locals 3
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

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/jodo/gson/internal/bind/ObjectTypeAdapter;

    invoke-direct {v0, p1, v1}, Lcom/jodo/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/jodo/gson/Gson;Lcom/jodo/gson/internal/bind/ObjectTypeAdapter$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
