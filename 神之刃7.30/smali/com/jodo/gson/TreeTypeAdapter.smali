.class final Lcom/jodo/gson/TreeTypeAdapter;
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
.field private delegate:Lcom/jodo/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/jodo/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/jodo/gson/Gson;

.field private final serializer:Lcom/jodo/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/jodo/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/jodo/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jodo/gson/JsonSerializer;Lcom/jodo/gson/JsonDeserializer;Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;Lcom/jodo/gson/TypeAdapterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/jodo/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/jodo/gson/Gson;",
            "Lcom/jodo/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/jodo/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/jodo/gson/TreeTypeAdapter;->serializer:Lcom/jodo/gson/JsonSerializer;

    iput-object p2, p0, Lcom/jodo/gson/TreeTypeAdapter;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/jodo/gson/TreeTypeAdapter;->gson:Lcom/jodo/gson/Gson;

    iput-object p4, p0, Lcom/jodo/gson/TreeTypeAdapter;->typeToken:Lcom/jodo/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/jodo/gson/TreeTypeAdapter;->skipPast:Lcom/jodo/gson/TypeAdapterFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jodo/gson/JsonSerializer;Lcom/jodo/gson/JsonDeserializer;Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;Lcom/jodo/gson/TypeAdapterFactory;Lcom/jodo/gson/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jodo/gson/TreeTypeAdapter;-><init>(Lcom/jodo/gson/JsonSerializer;Lcom/jodo/gson/JsonDeserializer;Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;Lcom/jodo/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/jodo/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jodo/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->gson:Lcom/jodo/gson/Gson;

    iget-object v1, p0, Lcom/jodo/gson/TreeTypeAdapter;->skipPast:Lcom/jodo/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/jodo/gson/TreeTypeAdapter;->typeToken:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/jodo/gson/Gson;->getDelegateAdapter(Lcom/jodo/gson/TypeAdapterFactory;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/jodo/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/jodo/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jodo/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/jodo/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/jodo/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/jodo/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jodo/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/jodo/gson/TreeTypeAdapter$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/jodo/gson/TypeAdapterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jodo/gson/TypeAdapterFactory;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/jodo/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/gson/TreeTypeAdapter;->delegate()Lcom/jodo/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/jodo/gson/internal/Streams;->parse(Lcom/jodo/gson/stream/JsonReader;)Lcom/jodo/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jodo/gson/TreeTypeAdapter;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/jodo/gson/TreeTypeAdapter;->typeToken:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/gson/TreeTypeAdapter;->gson:Lcom/jodo/gson/Gson;

    iget-object v3, v3, Lcom/jodo/gson/Gson;->deserializationContext:Lcom/jodo/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/jodo/gson/JsonDeserializer;->deserialize(Lcom/jodo/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/jodo/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->serializer:Lcom/jodo/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/gson/TreeTypeAdapter;->delegate()Lcom/jodo/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter;->serializer:Lcom/jodo/gson/JsonSerializer;

    iget-object v1, p0, Lcom/jodo/gson/TreeTypeAdapter;->typeToken:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/gson/TreeTypeAdapter;->gson:Lcom/jodo/gson/Gson;

    iget-object v2, v2, Lcom/jodo/gson/Gson;->serializationContext:Lcom/jodo/gson/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/jodo/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/jodo/gson/JsonSerializationContext;)Lcom/jodo/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jodo/gson/internal/Streams;->write(Lcom/jodo/gson/JsonElement;Lcom/jodo/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
