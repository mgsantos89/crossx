.class public Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;
.super Ljava/lang/Object;
.source "CommentsPublicationBean.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_POST_ID:Ljava/lang/String; = "post_id"

.field public static final COLUMN_USER_COMMENT:Ljava/lang/String; = "comment"

.field public static final COLUMN_USER_CREATED:Ljava/lang/String; = "created"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final COLUMN_USER_MODIFIED:Ljava/lang/String; = "modified"

.field public static final TABLE_COMMENTS:Ljava/lang/String; = "tb_comments"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
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

    .line 29
    new-instance v7, Lcom/startapps/crossx/controller/dao/util/TableBuilder;

    const-string/jumbo v0, "tb_comments"

    invoke-direct {v7, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "_id"

    const-string v2, "INTEGER"

    .line 30
    invoke-virtual {v7, v1, v2, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->setPrimaryKey(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_id"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "comment"

    const-string v2, "TEXT"

    .line 32
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "created"

    .line 33
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "modified"

    .line 34
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "post_id"

    .line 35
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v1, "user_id"

    const-string v2, "INTEGER"

    const-string/jumbo v3, "tb_user"

    const-string v4, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addFK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 39
    invoke-virtual {v7}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAll()Z
    .locals 2

    .line 70
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_comments"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->deleteAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/CommentModel;
    .locals 3

    const-string v0, "_id"

    .line 98
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 100
    new-instance v0, Lcom/startapps/crossx/model/CommentModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/CommentModel;-><init>()V

    const-string/jumbo v1, "user_id"

    .line 101
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/CommentModel;->setId(Ljava/lang/String;)V

    const-string v1, "comment"

    .line 102
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/CommentModel;->setComment(Ljava/lang/String;)V

    const-string v1, "created"

    .line 103
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/CommentModel;->setCreated(Ljava/lang/String;)V

    const-string v1, "modified"

    .line 104
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/CommentModel;->setModified(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/CommentModel;->setUser(Lcom/startapps/crossx/model/UserModel;)V

    return-object v0
.end method

.method public static getListComments(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM tb_comments c JOIN tb_user u ON c.user_id = u.id where post_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->rawQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 82
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/CommentModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/CommentModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 90
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public static insertAll(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 45
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/CommentModel;

    add-int/lit8 v3, v1, 0x1

    .line 46
    invoke-static {v2, p1}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->toContentValue(Lcom/startapps/crossx/model/CommentModel;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v0, v1

    .line 48
    invoke-virtual {v2}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->featchUser(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    invoke-static {v1}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->insert(Lcom/startapps/crossx/model/UserModel;)V

    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v1}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->update(Lcom/startapps/crossx/model/UserModel;)V

    :goto_1
    move v1, v3

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object p0

    const-string/jumbo p1, "tb_comments"

    invoke-virtual {p0, p1, v0}, Lcom/startapps/crossx/controller/dao/DBManager;->bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static toContentValue(Lcom/startapps/crossx/model/CommentModel;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "post_id"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "comment"

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "created"

    .line 116
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getCreated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "modified"

    .line 117
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getModified()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static update(Lcom/startapps/crossx/model/CommentModel;Ljava/lang/String;)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/dao/CommentsPublicationBean;->toContentValue(Lcom/startapps/crossx/model/CommentModel;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/CommentModel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "tb_comments"

    const-string/jumbo v2, "user_id = ?"

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method
