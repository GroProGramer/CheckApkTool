.class Lcom/jodo/gson/internal/ConstructorConstructor$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jodo/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jodo/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/jodo/gson/internal/ConstructorConstructor;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/gson/internal/ConstructorConstructor$6;->this$0:Lcom/jodo/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
