.class public Lcom/mqgame/lib/SService;
.super Landroid/app/Service;
.source "SService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mqgame/lib/SService$MyHandler;
    }
.end annotation


# static fields
.field static final g_MinNotifyInterval:I = 0x258

.field static final g_NotificationId:I = 0x1a0a

.field static g_ScheduleCounter:J = 0x0L

.field static final g_ScheduleTimes:I = 0x5

.field static g_Service:Lcom/mqgame/lib/SService;

.field static g_TimeBreatheInterval:I


# instance fields
.field m_BreatheTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    .line 23
    const/16 v0, 0x3c

    sput v0, Lcom/mqgame/lib/SService;->g_TimeBreatheInterval:I

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mqgame/lib/SService;->g_ScheduleCounter:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    return-void
.end method

.method public static native breathe()V
.end method

.method public static clearAllNotify()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    sget-object v2, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/mqgame/lib/SService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 206
    .local v1, "nm":Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    const/16 v2, 0x1a0a

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    sget-object v1, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mqgame/lib/SService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "DataPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLibPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    sget-object v1, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mqgame/lib/SService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "LibPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    sget-object v1, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mqgame/lib/SService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "LogPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isGameRunning()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public static notification(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "push_time"    # J

    .prologue
    const/4 v11, 0x1

    .line 142
    :try_start_0
    sget-object v9, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Lcom/mqgame/lib/SService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 144
    .local v6, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 145
    .local v7, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.mqgame.lib.SNativeActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lt v9, v11, :cond_0

    .line 188
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :goto_0
    return-void

    .line 151
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    sget-object v9, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Lcom/mqgame/lib/SService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 152
    .local v4, "nm":Landroid/app/NotificationManager;
    if-eqz v4, :cond_1

    .line 156
    new-instance v5, Landroid/content/Intent;

    sget-object v9, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const-class v10, Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v5, "notificationIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    sget-object v9, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 161
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 162
    .local v8, "triggerNotify":Landroid/app/Notification;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_3

    .line 163
    new-instance v9, Landroid/app/Notification$Builder;

    sget-object v10, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f02002f

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 179
    :goto_1
    const/16 v9, 0x1a0a

    invoke-virtual {v4, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 181
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "triggerNotify":Landroid/app/Notification;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "nm":Landroid/app/NotificationManager;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v8    # "triggerNotify":Landroid/app/Notification;
    :cond_3
    :try_start_1
    new-instance v8, Landroid/app/Notification;

    .end local v8    # "triggerNotify":Landroid/app/Notification;
    const v9, 0x7f02002f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v9, p1, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 174
    .restart local v8    # "triggerNotify":Landroid/app/Notification;
    iget v9, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 175
    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 176
    sget-object v9, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    sget-object v10, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    invoke-virtual {v10}, Lcom/mqgame/lib/SService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090110

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "triggerNotify":Landroid/app/Notification;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static native reload(Ljava/lang/String;)V
.end method

.method public static native schedule()V
.end method

.method public static timeStartup(I)V
    .locals 6
    .param p0, "nBreatheInterval"    # I

    .prologue
    .line 221
    mul-int/lit16 v0, p0, 0x3e8

    sput v0, Lcom/mqgame/lib/SService;->g_TimeBreatheInterval:I

    .line 222
    sget-object v0, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/mqgame/lib/SService;->m_BreatheTimer:Ljava/util/Timer;

    .line 223
    sget-object v0, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    iget-object v0, v0, Lcom/mqgame/lib/SService;->m_BreatheTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mqgame/lib/SService$1;

    invoke-direct {v1}, Lcom/mqgame/lib/SService$1;-><init>()V

    const-wide/16 v2, 0x0

    sget v4, Lcom/mqgame/lib/SService;->g_TimeBreatheInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 248
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    .line 59
    const-string v9, "SOG"

    const-string v10, "sog service startuping"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sput-object p0, Lcom/mqgame/lib/SService;->g_Service:Lcom/mqgame/lib/SService;

    .line 62
    invoke-static {}, Lcom/mqgame/lib/SService;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "dataChk":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 64
    const-string v9, "SOG"

    const-string v10, "sog service startup without install complete"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v6, "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/String;

    const-string v10, "gnustl_shared"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v9, Ljava/lang/String;

    const-string v10, "compress"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v9, Ljava/lang/String;

    const-string v10, "script"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v9, Ljava/lang/String;

    const-string v10, "iconv"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Ljava/lang/String;

    const-string v10, "push"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 78
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "lCurModule":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SService;->getLibPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 82
    .local v7, "lTryModule":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 84
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 111
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "lCurModule":Ljava/lang/String;
    .end local v6    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v7    # "lTryModule":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "lCurModule":Ljava/lang/String;
    .restart local v6    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v7    # "lTryModule":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 115
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "lCurModule":Ljava/lang/String;
    .end local v6    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v7    # "lTryModule":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    const-string v9, "SOG"

    const-string v10, "sog service reloading"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/mqgame/lib/SService;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mqgame/lib/SService;->reload(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    :try_start_3
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v8, Lcom/mqgame/lib/SReciever;

    invoke-direct {v8}, Lcom/mqgame/lib/SReciever;-><init>()V

    .line 98
    .local v8, "receiver":Lcom/mqgame/lib/SReciever;
    invoke-virtual {p0, v8, v3}, Lcom/mqgame/lib/SService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "receiver":Lcom/mqgame/lib/SReciever;
    :goto_2
    :try_start_4
    new-instance v9, Lcom/mqgame/lib/SService$MyHandler;

    invoke-virtual {p0}, Lcom/mqgame/lib/SService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/mqgame/lib/SService$MyHandler;-><init>(Lcom/mqgame/lib/SService;Landroid/content/Context;Lcom/mqgame/lib/SService$1;)V

    invoke-static {v9}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 109
    const-string v9, "SOG"

    const-string v10, "sog service startup when crash"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :catch_2
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "SOG"

    const-string v1, "sog service shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    const-string v0, "SOG Service"

    const-string v1, "service OnStartup command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method
