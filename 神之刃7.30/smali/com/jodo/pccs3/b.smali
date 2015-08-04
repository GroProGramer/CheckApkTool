.class final Lcom/jodo/pccs3/b;
.super Lcom/avos/avoscloud/SaveCallback;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/b;->b:Lcom/jodo/pccs3/a;

    iput p2, p0, Lcom/jodo/pccs3/b;->a:I

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/avos/avoscloud/AVException;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/b;->b:Lcom/jodo/pccs3/a;

    iget v1, p0, Lcom/jodo/pccs3/b;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;I)V

    :cond_0
    return-void
.end method
