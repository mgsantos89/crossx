.class public Lcom/startapps/crossx/model/RankingUserModel;
.super Lcom/startapps/crossx/model/UserModel;
.source "RankingUserModel.java"


# instance fields
.field private endTime:Ljava/lang/String;

.field listResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private score:J

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/RankingUserModel;->listResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/startapps/crossx/model/RankingUserModel;->listResults:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingUserModel;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingUserModel;->listResults:Ljava/util/List;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/startapps/crossx/model/RankingUserModel;->score:J

    return-wide v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingUserModel;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingUserModel;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setScore(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/startapps/crossx/model/RankingUserModel;->score:J

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingUserModel;->startTime:Ljava/lang/String;

    return-void
.end method
