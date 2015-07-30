.class public Lcom/jodo/paysdk/JodoApp;
.super Landroid/app/Application;
.source "JodoApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 9
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->appInit(Landroid/content/Context;)V

    .line 10
    return-void
.end method
