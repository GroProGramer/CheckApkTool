.class final Lcom/jodo/paysdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/p;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/p;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "reg_from_dialog"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/p;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupRegisterViews()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
