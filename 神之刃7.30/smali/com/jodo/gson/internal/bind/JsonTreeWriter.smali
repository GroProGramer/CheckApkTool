.class public final Lcom/jodo/gson/internal/bind/JsonTreeWriter;
.super Lcom/jodo/gson/stream/JsonWriter;


# static fields
.field private static final SENTINEL_CLOSED:Lcom/jodo/gson/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lcom/jodo/gson/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jodo/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jodo/gson/internal/bind/JsonTreeWriter$1;

    invoke-direct {v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter$1;-><init>()V

    sput-object v0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/jodo/gson/JsonPrimitive;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/jodo/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v0, Lcom/jodo/gson/JsonNull;->INSTANCE:Lcom/jodo/gson/JsonNull;

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->product:Lcom/jodo/gson/JsonElement;

    return-void
.end method

.method private peek()Lcom/jodo/gson/JsonElement;
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/JsonElement;

    return-object v0
.end method

.method private put(Lcom/jodo/gson/JsonElement;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jodo/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->getSerializeNulls()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->peek()Lcom/jodo/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/JsonObject;

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/jodo/gson/JsonObject;->add(Ljava/lang/String;Lcom/jodo/gson/JsonElement;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->product:Lcom/jodo/gson/JsonElement;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->peek()Lcom/jodo/gson/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lcom/jodo/gson/JsonArray;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/jodo/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/jodo/gson/JsonArray;->add(Lcom/jodo/gson/JsonElement;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final beginArray()Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/jodo/gson/JsonArray;

    invoke-direct {v0}, Lcom/jodo/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final beginObject()Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/jodo/gson/JsonObject;

    invoke-direct {v0}, Lcom/jodo/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/jodo/gson/JsonPrimitive;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final endArray()Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->peek()Lcom/jodo/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/jodo/gson/JsonArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final endObject()Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->peek()Lcom/jodo/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/jodo/gson/JsonObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final get()Lcom/jodo/gson/JsonElement;
    .locals 3

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->product:Lcom/jodo/gson/JsonElement;

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->peek()Lcom/jodo/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/jodo/gson/JsonObject;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final nullValue()Lcom/jodo/gson/stream/JsonWriter;
    .locals 1

    sget-object v0, Lcom/jodo/gson/JsonNull;->INSTANCE:Lcom/jodo/gson/JsonNull;

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    return-object p0
.end method

.method public final value(D)Lcom/jodo/gson/stream/JsonWriter;
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    return-object p0
.end method

.method public final value(J)Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    return-object p0
.end method

.method public final value(Ljava/lang/Number;)Lcom/jodo/gson/stream/JsonWriter;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    goto :goto_0
.end method

.method public final value(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    goto :goto_0
.end method

.method public final value(Z)Lcom/jodo/gson/stream/JsonWriter;
    .locals 2

    new-instance v0, Lcom/jodo/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jodo/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/jodo/gson/internal/bind/JsonTreeWriter;->put(Lcom/jodo/gson/JsonElement;)V

    return-object p0
.end method
