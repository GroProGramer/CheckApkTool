.class Lcom/jodo/paysdk/demo/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jodo/paysdk/demo/MainActivity;->onLoginCallback(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jodo/paysdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/MainActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/jodo/paysdk/demo/MainActivity$3;->this$0:Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleLoadedFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity$3;->this$0:Lcom/jodo/paysdk/demo/MainActivity;

    const-string v1, "RoleLoaded\u8c03\u7528\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method
