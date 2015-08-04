.class Lcom/jodo/gson/Gson$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/JsonDeserializationContext;


# instance fields
.field final synthetic this$0:Lcom/jodo/gson/Gson;


# direct methods
.method constructor <init>(Lcom/jodo/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/gson/Gson$1;->this$0:Lcom/jodo/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/jodo/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jodo/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/Gson$1;->this$0:Lcom/jodo/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/jodo/gson/Gson;->fromJson(Lcom/jodo/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
