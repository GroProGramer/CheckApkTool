.class final Lcom/jodo/paysdk/wallet/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/wallet/b;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/h;->a:Lcom/jodo/paysdk/wallet/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V

    return-void
.end method
