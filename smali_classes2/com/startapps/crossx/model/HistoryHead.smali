.class public Lcom/startapps/crossx/model/HistoryHead;
.super Ljava/lang/Object;
.source "HistoryHead.java"


# instance fields
.field public date:Ljava/lang/String;

.field public value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/model/HistoryHead;->value:D

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/model/HistoryHead;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/startapps/crossx/model/HistoryHead;->date:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/HistoryHead;->date:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->getMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
