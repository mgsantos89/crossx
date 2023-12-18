.class public Lcom/startapps/crossx/model/RankingCategory;
.super Ljava/lang/Object;
.source "RankingCategory.java"


# instance fields
.field private categoryID:J

.field private categoryName:Ljava/lang/String;

.field private userModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserModel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingCategory;->userModelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/RankingCategory;->userModelList:Ljava/util/List;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingCategory;->userModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCategoryID()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/startapps/crossx/model/RankingCategory;->categoryID:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingCategory;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/RankingUserModel;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/startapps/crossx/model/RankingCategory;->userModelList:Ljava/util/List;

    return-object v0
.end method

.method public setCategoryID(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/startapps/crossx/model/RankingCategory;->categoryID:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/model/RankingCategory;->categoryName:Ljava/lang/String;

    return-void
.end method
