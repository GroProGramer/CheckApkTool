.class final Lcom/jodo/paysdk/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/d/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/d/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/paysdk/d/b;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/d/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/jodo/paysdk/d/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/jodo/paysdk/d/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
