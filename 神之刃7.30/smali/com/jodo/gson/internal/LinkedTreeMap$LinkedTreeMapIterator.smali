.class abstract Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jodo/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/jodo/gson/internal/LinkedTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/jodo/gson/internal/LinkedTreeMap;->header:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcom/jodo/gson/internal/LinkedTreeMap$Node;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/jodo/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jodo/gson/internal/LinkedTreeMap;Lcom/jodo/gson/internal/LinkedTreeMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/jodo/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/jodo/gson/internal/LinkedTreeMap;->header:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextNode()Lcom/jodo/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jodo/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/jodo/gson/internal/LinkedTreeMap;->header:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/jodo/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/jodo/gson/internal/LinkedTreeMap$Node;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jodo/gson/internal/LinkedTreeMap;->removeInternal(Lcom/jodo/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/jodo/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/jodo/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/jodo/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/jodo/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method
