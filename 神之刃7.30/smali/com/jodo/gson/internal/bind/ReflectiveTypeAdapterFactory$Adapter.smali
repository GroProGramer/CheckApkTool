.class public final Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/jodo/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jodo/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/jodo/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jodo/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/jodo/gson/internal/ObjectConstructor;

    iput-object p2, p0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jodo/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/jodo/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->peek()Lcom/jodo/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/jodo/gson/stream/JsonToken;->NULL:Lcom/jodo/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/jodo/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/jodo/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jodo/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/jodo/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginObject()Lcom/jodo/gson/stream/JsonWriter;

    :try_start_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    iget-boolean v2, v0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/jodo/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/jodo/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endObject()Lcom/jodo/gson/stream/JsonWriter;

    goto :goto_0
.end method
