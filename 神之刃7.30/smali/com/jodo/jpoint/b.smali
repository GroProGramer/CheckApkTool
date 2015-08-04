.class final Lcom/jodo/jpoint/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/interfaces/InitCallbackListener;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/JPoint_Splash;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/JPoint_Splash;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/b;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSdkInitFinished(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7f51\u6e38SDK\u521d\u59cb\u5316\u6210\u529f\uff01"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    new-instance v1, Lcom/jodo/jpoint/c;

    invoke-direct {v1, p0}, Lcom/jodo/jpoint/c;-><init>(Lcom/jodo/jpoint/b;)V

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7f51\u6e38\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
