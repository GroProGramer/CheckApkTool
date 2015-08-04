.class final Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/jodo/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jodo/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/jodo/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/jodo/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;Lcom/jodo/gson/Gson;Ljava/lang/reflect/Type;Lcom/jodo/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/jodo/gson/TypeAdapter;Lcom/jodo/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/jodo/gson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/jodo/gson/TypeAdapter",
            "<TV;>;",
            "Lcom/jodo/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/jodo/gson/Gson;Lcom/jodo/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    new-instance v0, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/jodo/gson/Gson;Lcom/jodo/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    iput-object p7, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/jodo/gson/internal/ObjectConstructor;

    return-void
.end method

.method private keyToString(Lcom/jodo/gson/JsonElement;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/jodo/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/jodo/gson/JsonElement;->getAsJsonPrimitive()Lcom/jodo/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/jodo/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/jodo/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "null"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/jodo/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->peek()Lcom/jodo/gson/stream/JsonToken;

    move-result-object v1

    sget-object v0, Lcom/jodo/gson/stream/JsonToken;->NULL:Lcom/jodo/gson/stream/JsonToken;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/jodo/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/jodo/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/jodo/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/jodo/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->beginArray()V

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/jodo/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->endArray()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->beginObject()V

    :cond_4
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/jodo/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/jodo/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v1, p1}, Lcom/jodo/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/jodo/gson/stream/JsonReader;)V

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/jodo/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->endObject()V

    goto :goto_0
.end method

.method public final bridge synthetic write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public final write(Lcom/jodo/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;

    # getter for: Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z
    invoke-static {v0}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginObject()Lcom/jodo/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jodo/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;

    iget-object v2, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endObject()Lcom/jodo/gson/stream/JsonWriter;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jodo/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/jodo/gson/JsonElement;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/jodo/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/jodo/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginArray()Lcom/jodo/gson/stream/JsonWriter;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginArray()Lcom/jodo/gson/stream/JsonWriter;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/jodo/gson/internal/Streams;->write(Lcom/jodo/gson/JsonElement;Lcom/jodo/gson/stream/JsonWriter;)V

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endArray()Lcom/jodo/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endArray()Lcom/jodo/gson/stream/JsonWriter;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginObject()Lcom/jodo/gson/stream/JsonWriter;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/JsonElement;

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/jodo/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endObject()Lcom/jodo/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method
