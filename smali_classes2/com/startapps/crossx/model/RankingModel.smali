.class public Lcom/startapps/crossx/model/RankingModel;
.super Ljava/lang/Object;
.source "RankingModel.java"


# instance fields
.field private category:J

.field private categoryName:Ljava/lang/String;

.field rankingUserModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private wodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/RankingModel;->rankingUserModelList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRankingUerModelList(Lcom/startapps/crossx/model/RankingUserModel;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingModel;->rankingUserModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCategory()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/startapps/crossx/model/RankingModel;->category:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingModel;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingUserModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingModel;->rankingUserModelList:Ljava/util/List;

    return-object v0
.end method

.method public getWodName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingModel;->wodName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/startapps/crossx/model/RankingModel;->category:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingModel;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setWodName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingModel;->wodName:Ljava/lang/String;

    return-void
.end method
