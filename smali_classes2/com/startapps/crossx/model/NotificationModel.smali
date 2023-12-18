.class public Lcom/startapps/crossx/model/NotificationModel;
.super Ljava/lang/Object;
.source "NotificationModel.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:J

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/model/NotificationModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/startapps/crossx/model/NotificationModel;->id:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/model/NotificationModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/model/NotificationModel;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/startapps/crossx/model/NotificationModel;->id:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/startapps/crossx/model/NotificationModel;->message:Ljava/lang/String;

    return-void
.end method
