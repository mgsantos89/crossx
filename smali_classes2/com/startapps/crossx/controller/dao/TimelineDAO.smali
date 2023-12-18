.class public Lcom/startapps/crossx/controller/dao/TimelineDAO;
.super Ljava/lang/Object;
.source "TimelineDAO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPublishFromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object v0

    .line 72
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/TimeLineModel;->setUser(Lcom/startapps/crossx/model/UserModel;)V

    .line 73
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->getImageProperties(Lcom/startapps/crossx/model/TimeLineModel;)Lcom/startapps/crossx/model/ImageProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/TimeLineModel;->setImageProperties(Lcom/startapps/crossx/model/ImageProperties;)V

    .line 74
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->getListComments(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/TimeLineModel;->setComments(Ljava/util/List;)V

    return-object v0
.end method

.method public static insertPublications(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/TimeLineModel;

    .line 20
    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->featchUser(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/model/UserModel;

    move-result-object v3

    if-nez v3, :cond_1

    .line 22
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->insert(Lcom/startapps/crossx/model/UserModel;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->update(Lcom/startapps/crossx/model/UserModel;)V

    .line 27
    :goto_1
    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getImageProperties()Lcom/startapps/crossx/model/ImageProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 28
    invoke-static {v1}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->insert(Lcom/startapps/crossx/model/TimeLineModel;)V

    .line 31
    :cond_2
    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->insertAll(Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->insertAll(Ljava/util/Collection;)V

    return-void
.end method

.method public static reset()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->deleteAll()Z

    .line 41
    invoke-static {}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->deleteAll()Z

    .line 42
    invoke-static {}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->deleteAll()Z

    .line 43
    invoke-static {}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->deleteAll()Z

    return-void
.end method

.method public static timeline()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SELECT * FROM tb_publish p JOIN tb_user u ON p.user_id = u.id"

    invoke-virtual {v0, v1, v2, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->rawQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/TimelineDAO;->createPublishFromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/TimelineDAO;->createPublishFromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
