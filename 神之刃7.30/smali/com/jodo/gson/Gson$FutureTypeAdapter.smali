.class Lcom/jodo/gson/Gson$FutureTypeAdapter;
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/jodo/gson/TypeAdapter;->read(Lcom/jodo/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/jodo/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    return-void
.end method

.method public write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/Gson$FutureTypeAdapter;->delegate:Lcom/jodo/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/jodo/gson/TypeAdapter;->write(Lcom/jodo/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
