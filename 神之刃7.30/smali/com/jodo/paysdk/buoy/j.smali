.class final Lcom/jodo/paysdk/buoy/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jodo/paysdk/buoy/i;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/j;->b:Lcom/jodo/paysdk/buoy/i;

    iput-object p2, p0, Lcom/jodo/paysdk/buoy/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/j;->b:Lcom/jodo/paysdk/buoy/i;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/j;->a:Ljava/lang/String;

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method
