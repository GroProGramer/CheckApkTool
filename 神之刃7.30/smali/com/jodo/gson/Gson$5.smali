.class Lcom/jodo/gson/Gson$5;
.super Lcom/jodo/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jodo/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jodo/gson/Gson;


# direct methods
.method constructor <init>(Lcom/jodo/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/gson/Gson$5;->this$0:Lcom/jodo/gson/Gson;

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->peek()Lcom/jodo/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/jodo/gson/stream/JsonToken;->NULL:Lcom/jodo/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jodo/gson/Gson$5;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jodo/gson/stream/JsonWriter;->nullValue()Lcom/jodo/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/jodo/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/jodo/gson/Gson$5;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
