.class public Lcom/mqgame/lib/SUtility$SIniReader;
.super Ljava/lang/Object;
.source "SUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIniReader"
.end annotation


# instance fields
.field private transient current:Ljava/util/Properties;

.field private transient currentSecion:Ljava/lang/String;

.field protected sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mqgame/lib/SUtility$SIniReader;->sections:Ljava/util/HashMap;

    .line 1564
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1565
    .local v0, "reader":Ljava/io/BufferedReader;
    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {p0, v0}, Lcom/mqgame/lib/SUtility$SIniReader;->read(Ljava/io/BufferedReader;)V

    .line 1567
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1569
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "launguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mqgame/lib/SUtility$SIniReader;->sections:Ljava/util/HashMap;

    .line 1556
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1557
    .local v0, "reader":Ljava/io/BufferedReader;
    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {p0, v0}, Lcom/mqgame/lib/SUtility$SIniReader;->read(Ljava/io/BufferedReader;)V

    .line 1559
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1561
    :cond_0
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1595
    iget-object v2, p0, Lcom/mqgame/lib/SUtility$SIniReader;->sections:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 1597
    .local v0, "p":Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 1598
    const/4 v1, 0x0

    .line 1602
    :goto_0
    return-object v1

    .line 1601
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "value":Ljava/lang/String;
    goto :goto_0
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 1579
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1580
    const-string v3, "\\[.*\\]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1581
    const-string v3, "\\[(.*)\\]"

    const-string v4, "$1"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqgame/lib/SUtility$SIniReader;->currentSecion:Ljava/lang/String;

    .line 1582
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/mqgame/lib/SUtility$SIniReader;->current:Ljava/util/Properties;

    .line 1583
    iget-object v3, p0, Lcom/mqgame/lib/SUtility$SIniReader;->sections:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mqgame/lib/SUtility$SIniReader;->currentSecion:Ljava/lang/String;

    iget-object v5, p0, Lcom/mqgame/lib/SUtility$SIniReader;->current:Ljava/util/Properties;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    const-string v3, ".*=.*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1585
    iget-object v3, p0, Lcom/mqgame/lib/SUtility$SIniReader;->current:Ljava/util/Properties;

    if-eqz v3, :cond_0

    .line 1586
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1587
    .local v0, "i":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1588
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1589
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/mqgame/lib/SUtility$SIniReader;->current:Ljava/util/Properties;

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected read(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1573
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {p0, v0}, Lcom/mqgame/lib/SUtility$SIniReader;->parseLine(Ljava/lang/String;)V

    goto :goto_0

    .line 1576
    :cond_0
    return-void
.end method
