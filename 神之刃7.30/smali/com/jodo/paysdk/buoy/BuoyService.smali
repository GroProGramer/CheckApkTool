.class public Lcom/jodo/paysdk/buoy/BuoyService;
.super Landroid/app/Service;


# static fields
.field private static volatile a:Z

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/buoy/BuoyService;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/buoy/BuoyService;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/jodo/paysdk/buoy/BuoyService;->a:Z

    if-nez v0, :cond_1

    sget-object v1, Lcom/jodo/paysdk/buoy/BuoyService;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/jodo/paysdk/buoy/BuoyService;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jodo/paysdk/buoy/BuoyService;->a:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jodo/paysdk/buoy/BuoyService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-static {p0}, Lcom/jodo/paysdk/buoy/a;->a(Landroid/content/Context;)Lcom/jodo/paysdk/buoy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/a;->b()V

    const/4 v0, 0x2

    return v0
.end method
