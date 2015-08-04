.class public final Lcom/jodo/gson/internal/Streams;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/jodo/gson/stream/JsonReader;)Lcom/jodo/gson/JsonElement;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/gson/stream/JsonReader;->peek()Lcom/jodo/gson/stream/JsonToken;

    const/4 v1, 0x0

    sget-object v0, Lcom/jodo/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/jodo/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/jodo/gson/JsonNull;->INSTANCE:Lcom/jodo/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/jodo/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jodo/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/jodo/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/jodo/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/jodo/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/jodo/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static write(Lcom/jodo/gson/JsonElement;Lcom/jodo/gson/stream/JsonWriter;)V
    .locals 1

    sget-object v0, Lcom/jodo/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/jodo/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jodo/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/jodo/gson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_0
.end method
