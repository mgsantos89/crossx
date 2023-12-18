.class public Lcom/startapps/crossx/model/ChampionshipDetailModel;
.super Ljava/lang/Object;
.source "ChampionshipDetailModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public championship_id:J

.field public order:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->championship_id:J

    return-wide v0
.end method

.method public getOrder()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->order:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->championship_id:J

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->order:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/model/ChampionshipDetailModel;->url:Ljava/lang/String;

    return-void
.end method
