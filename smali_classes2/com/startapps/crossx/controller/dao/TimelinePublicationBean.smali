.class public Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;
.super Ljava/lang/Object;
.source "TimelinePublicationBean.java"


# static fields
.field public static final COLUMN_COMMENT_COUNT:Ljava/lang/String; = "commentCount"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LIKE_COUNT:Ljava/lang/String; = "likeCount"

.field public static final COLUMN_PUBLISH_CREATED:Ljava/lang/String; = "created"

.field public static final COLUMN_PUBLISH_ID:Ljava/lang/String; = "post_id"

.field public static final COLUMN_PUBLISH_IMAGE:Ljava/lang/String; = "imageUrl"

.field public static final COLUMN_PUBLISH_TEXT:Ljava/lang/String; = "text"

.field public static final COLUMN_PUBLISH_USER_ID:Ljava/lang/String; = "user_id"

.field public static final COLUMN_USER_LIKED:Ljava/lang/String; = "userLiked"

.field public static final TABLE_PUBLISH:Ljava/lang/String; = "tb_publish"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTableString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v7, Lcom/startapps/crossx/controller/dao/util/TableBuilder;

    const-string/jumbo v0, "tb_publish"

    invoke-direct {v7, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "_id"

    const-string v2, "INTEGER"

    .line 34
    invoke-virtual {v7, v1, v2, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->setPrimaryKey(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "post_id"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "userLiked"

    .line 36
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "commentCount"

    .line 37
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "likeCount"

    .line 38
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "text"

    const-string v2, "TEXT"

    .line 39
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "imageUrl"

    .line 40
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "created"

    .line 41
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v1, "user_id"

    const-string v2, "INTEGER"

    const-string/jumbo v3, "tb_user"

    const-string v4, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addFK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 45
    invoke-virtual {v7}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAll()Z
    .locals 2

    .line 69
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_publish"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->deleteAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;
    .locals 3

    const-string v0, "_id"

    .line 96
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 98
    new-instance v0, Lcom/startapps/crossx/model/TimeLineModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/TimeLineModel;-><init>()V

    const-string v1, "post_id"

    .line 99
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "text"

    .line 100
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setText(Ljava/lang/String;)V

    const-string v1, "imageUrl"

    .line 101
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "created"

    .line 102
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setCreated(Ljava/lang/String;)V

    const-string v1, "commentCount"

    .line 104
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setCommentCount(I)V

    const-string v1, "likeCount"

    .line 105
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setLikeCount(I)V

    const-string/jumbo v1, "userLiked"

    .line 106
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setUserLiked(Z)V

    return-object v0
.end method

.method public static getPublication()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_publish"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/startapps/crossx/controller/dao/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/TimeLineModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public static insert(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_publish"

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public static insertAll(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 51
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/TimeLineModel;

    add-int/lit8 v3, v1, 0x1

    .line 52
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object p0

    const-string/jumbo v1, "tb_publish"

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/controller/dao/DBManager;->bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;
    .locals 3

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "post_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "text"

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imageUrl"

    .line 116
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "created"

    .line 117
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getCreated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getCommentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "commentCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getLikeCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "likeCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->isUserLiked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "userLiked"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static update(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 4

    .line 65
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/TimelinePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "tb_publish"

    const-string v3, "post_id = ?"

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method
