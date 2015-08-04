.class Lcom/jodo/paysdk/demo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/OrderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jodo/paysdk/demo/MainActivity;->onClick(Landroid/view/View;)V
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
    .line 157
    iput-object p1, p0, Lcom/jodo/paysdk/demo/MainActivity$2;->this$0:Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "cpOrderId"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity$2;->this$0:Lcom/jodo/paysdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u5355\u56de\u8c03\uff0cstatusCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cporderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u8bf7\u67e5\u8be2cp\u670d\u52a1\u5668\u83b7\u53d6\u6700\u65b0\u8ba2\u5355\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    return-void
.end method
