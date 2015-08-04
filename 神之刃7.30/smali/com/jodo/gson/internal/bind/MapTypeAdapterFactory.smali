.class public final Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/TypeAdapterFactory;


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/jodo/gson/internal/ConstructorConstructor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;

    iput-boolean p2, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method private getKeyAdapter(Lcom/jodo/gson/Gson;Ljava/lang/reflect/Type;)Lcom/jodo/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/jodo/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/jodo/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/jodo/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/jodo/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/jodo/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/gson/Gson;->getAdapter(Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final create(Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/jodo/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/jodo/gson/Gson;Ljava/lang/reflect/Type;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v4

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/jodo/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/jodo/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/gson/Gson;->getAdapter(Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v6

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/jodo/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p2}, Lcom/jodo/gson/internal/ConstructorConstructor;->get(Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/internal/ObjectConstructor;

    move-result-object v7

    new-instance v0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;Lcom/jodo/gson/Gson;Ljava/lang/reflect/Type;Lcom/jodo/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/jodo/gson/TypeAdapter;Lcom/jodo/gson/internal/ObjectConstructor;)V

    goto :goto_0
.end method
