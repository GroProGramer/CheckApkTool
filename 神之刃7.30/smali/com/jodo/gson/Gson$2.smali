.class Lcom/jodo/gson/Gson$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/JsonSerializationContext;


# instance fields
.field final synthetic this$0:Lcom/jodo/gson/Gson;


# direct methods
.method constructor <init>(Lcom/jodo/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/gson/Gson$2;->this$0:Lcom/jodo/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/jodo/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/jodo/gson/Gson$2;->this$0:Lcom/jodo/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/jodo/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/jodo/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/jodo/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/jodo/gson/Gson$2;->this$0:Lcom/jodo/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/jodo/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/jodo/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
