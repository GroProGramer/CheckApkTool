.class public Lcom/jodo/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final Log_IN_FILE:Z = false

.field public static final Log_Level_Debug:I = 0x2

.field public static final Log_Level_Detail:I = 0x1

.field public static final Log_Level_Error:I = 0x4

.field public static final Log_Level_Info:I = 0x0

.field public static final Log_Level_Warnning:I = 0x3

.field private static final Log_WITH_POSTION:Z

.field private static curTime:J

.field private static logLevel:I

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/jodo/common/util/LogUtil;->logLevel:I

    .line 20
    const-string v0, "sharesdk"

    sput-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/common/util/LogUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static Cal(Ljava/lang/String;)V
    .locals 6
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/jodo/common/util/LogUtil;->curTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jodo/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 56
    sput-wide v0, Lcom/jodo/common/util/LogUtil;->curTime:J

    .line 57
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x2

    sget v1, Lcom/jodo/common/util/LogUtil;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x4

    sget v1, Lcom/jodo/common/util/LogUtil;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 130
    if-eqz p0, :cond_1

    .line 131
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "info null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "msg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 150
    return-void

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/jodo/common/util/LogUtil;->getErrorDetail(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/jodo/common/util/LogUtil;->getErrorDetail(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static getErrorDetail(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const-string v5, "Exception null"

    .line 194
    :goto_0
    return-object v5

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caused By:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 185
    .local v2, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string v5, "):"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 61
    sget v0, Lcom/jodo/common/util/LogUtil;->logLevel:I

    if-gtz v0, :cond_0

    .line 67
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static openLog(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sput-object p0, Lcom/jodo/common/util/LogUtil;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .param p0, "Log_Level"    # I

    .prologue
    .line 36
    sput p0, Lcom/jodo/common/util/LogUtil;->logLevel:I

    .line 37
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    sput-object p0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method

.method public static startCal()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jodo/common/util/LogUtil;->curTime:J

    .line 50
    return-void
.end method

.method public static startCal(Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jodo/common/util/LogUtil;->curTime:J

    .line 46
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x1

    sget v1, Lcom/jodo/common/util/LogUtil;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 83
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x3

    sget v1, Lcom/jodo/common/util/LogUtil;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/jodo/common/util/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public static writeIntoFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    const/4 v0, 0x1

    .line 175
    .local v0, "res":Z
    return v0
.end method
