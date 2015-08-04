.class public Lcom/jodo/paysdk/JodoApp;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->appInit(Landroid/content/Context;)V

    return-void
.end method
