.class final Lcom/jodo/paysdk/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseWebview(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onOpenWebview()V
    .locals 1

    sget-object v0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-virtual {v0}, Lcom/jodo/jpoint/JPoint_Splash;->finish()V

    return-void
.end method
