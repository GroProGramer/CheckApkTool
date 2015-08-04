.class final Lcom/jodo/paysdk/demo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/demo/c;->a:Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRoleLoadedFinished(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/demo/c;->a:Lcom/jodo/paysdk/demo/MainActivity;

    const-string v1, "RoleLoaded\u8c03\u7528\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
