.class public interface abstract Lcom/jodo/gson/JsonSerializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/jodo/gson/JsonSerializationContext;)Lcom/jodo/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/jodo/gson/JsonSerializationContext;",
            ")",
            "Lcom/jodo/gson/JsonElement;"
        }
    .end annotation
.end method
