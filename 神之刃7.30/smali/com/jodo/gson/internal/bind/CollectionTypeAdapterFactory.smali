.class public final Lcom/jodo/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/jodo/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;
    .locals 4
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

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/jodo/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/jodo/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/gson/Gson;->getAdapter(Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/jodo/gson/internal/ConstructorConstructor;->get(Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/internal/ObjectConstructor;

    move-result-object v3

    new-instance v0, Lcom/jodo/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/jodo/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/jodo/gson/Gson;Ljava/lang/reflect/Type;Lcom/jodo/gson/TypeAdapter;Lcom/jodo/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
