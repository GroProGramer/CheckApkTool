.class public final Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/jodo/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jodo/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/jodo/gson/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcom/jodo/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/jodo/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/jodo/gson/Gson;Lcom/jodo/gson/TypeAdapter;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/Gson;",
            "Lcom/jodo/gson/TypeAdapter",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/jodo/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/jodo/gson/Gson;Lcom/jodo/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    iput-object p3, p0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->peek()Lcom/jodo/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/jodo/gson/stream/JsonToken;->NULL:Lcom/jodo/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->endArray()V

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->beginArray()Lcom/jodo/gson/stream/JsonWriter;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->endArray()Lcom/jodo/gson/stream/JsonWriter;

    goto :goto_0
.end method
