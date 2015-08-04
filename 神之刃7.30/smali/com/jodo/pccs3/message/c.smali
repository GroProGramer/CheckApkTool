.class final Lcom/jodo/pccs3/message/c;
.super Lcom/avos/avoscloud/ProgressCallback;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/message/b;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/message/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/c;->a:Lcom/jodo/pccs3/message/b;

    invoke-direct {p0}, Lcom/avos/avoscloud/ProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return-void
.end method
