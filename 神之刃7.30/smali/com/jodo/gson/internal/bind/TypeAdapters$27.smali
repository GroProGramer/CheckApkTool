.class final Lcom/jodo/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/TypeAdapterFactory;


# instance fields
.field final synthetic val$type:Lcom/jodo/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/jodo/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/jodo/gson/reflect/TypeToken;Lcom/jodo/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/jodo/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/jodo/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;
    .locals 1
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

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/jodo/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/jodo/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
