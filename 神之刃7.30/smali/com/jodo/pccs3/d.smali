.class final Lcom/jodo/pccs3/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jodo/pccs3/a/g",
        "<",
        "Lcom/jodo/pccs3/message/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/c;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/d;->a:Lcom/jodo/pccs3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/jodo/pccs3/message/f;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/d;->a:Lcom/jodo/pccs3/c;

    iget-object v0, v0, Lcom/jodo/pccs3/c;->b:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->f(Lcom/jodo/pccs3/a;)Z

    return-void
.end method

.method public final bridge synthetic a(Lcom/jodo/pccs3/message/f;Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Lcom/jodo/pccs3/message/f;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/d;->a:Lcom/jodo/pccs3/c;

    iget-object v0, v0, Lcom/jodo/pccs3/c;->b:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->f(Lcom/jodo/pccs3/a;)Z

    return-void
.end method
