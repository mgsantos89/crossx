.class public Lcom/startapps/crossx/model/RankingWodModel;
.super Ljava/lang/Object;
.source "RankingWodModel.java"


# instance fields
.field private rankingCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingCategory;",
            ">;"
        }
    .end annotation
.end field

.field private wodID:J

.field private wodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRankingCategory(Lcom/startapps/crossx/model/RankingCategory;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->rankingCategoryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->rankingCategoryList:Ljava/util/List;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->rankingCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRankingCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingCategory;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->rankingCategoryList:Ljava/util/List;

    return-object v0
.end method

.method public getWodID()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->wodID:J

    return-wide v0
.end method

.method public getWodName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingWodModel;->wodName:Ljava/lang/String;

    return-object v0
.end method

.method public setWodID(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/startapps/crossx/model/RankingWodModel;->wodID:J

    return-void
.end method

.method public setWodName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingWodModel;->wodName:Ljava/lang/String;

    return-void
.end method
