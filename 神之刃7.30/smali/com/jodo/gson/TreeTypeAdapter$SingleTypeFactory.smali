.class Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/TypeAdapterFactory;


# instance fields
.field private final deserializer:Lcom/jodo/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/jodo/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/jodo/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/jodo/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/jodo/gson/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jodo/gson/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/jodo/gson/JsonSerializer;

    instance-of v0, p1, Lcom/jodo/gson/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jodo/gson/JsonDeserializer;

    :goto_1
    iput-object p1, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/jodo/gson/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/jodo/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    iput-object p2, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/jodo/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    iput-object p4, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/jodo/gson/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/jodo/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;)Lcom/jodo/gson/TypeAdapter;
    .locals 7
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

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/jodo/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/jodo/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/jodo/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/jodo/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/jodo/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/jodo/gson/JsonSerializer;

    iget-object v2, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/jodo/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/jodo/gson/TreeTypeAdapter;-><init>(Lcom/jodo/gson/JsonSerializer;Lcom/jodo/gson/JsonDeserializer;Lcom/jodo/gson/Gson;Lcom/jodo/gson/reflect/TypeToken;Lcom/jodo/gson/TypeAdapterFactory;Lcom/jodo/gson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/jodo/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method
