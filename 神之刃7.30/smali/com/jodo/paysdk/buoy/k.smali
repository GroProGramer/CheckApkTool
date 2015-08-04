.class final Lcom/jodo/paysdk/buoy/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/d;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/k;->a:Lcom/jodo/paysdk/buoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/k;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->a()V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/k;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/JodoSysNoticeActivity;->show(Landroid/content/Context;)V

    return-void
.end method
