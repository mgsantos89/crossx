.class public Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;
.super Ljava/lang/Object;
.source "PropertisImagePublicationBean.java"


# static fields
.field public static final COLUMN_FILESIZE:Ljava/lang/String; = "filesize"

.field public static final COLUMN_HEIGHT:Ljava/lang/String; = "height"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_POST_ID:Ljava/lang/String; = "post_id"

.field public static final COLUMN_WIDTH:Ljava/lang/String; = "width"

.field public static final TABLE_PROPERTIES:Ljava/lang/String; = "tb_properties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 25
    new-instance v7, Lcom/startapps/crossx/controller/dao/util/TableBuilder;

    const-string/jumbo v0, "tb_properties"

    invoke-direct {v7, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "_id"

    const-string v2, "INTEGER"

    .line 26
    invoke-virtual {v7, v1, v2, v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->setPrimaryKey(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "post_id"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "height"

    .line 28
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "width"

    .line 29
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "filesize"

    .line 30
    invoke-virtual {v7, v0, v2, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "post_id"

    const-string v2, "INTEGER"

    const-string/jumbo v3, "tb_publish"

    const-string v4, "post_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addFK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    invoke-virtual {v7}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAll()Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_properties"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->deleteAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/ImageProperties;
    .locals 3

    const-string v0, "_id"

    .line 79
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 81
    new-instance v0, Lcom/startapps/crossx/model/ImageProperties;

    invoke-direct {v0}, Lcom/startapps/crossx/model/ImageProperties;-><init>()V

    const-string v1, "height"

    .line 82
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ImageProperties;->setHeight(F)V

    const-string/jumbo v1, "width"

    .line 83
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/model/ImageProperties;->setWidth(F)V

    .line 84
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/ImageProperties;->setFilesize(I)V

    return-object v0
.end method

.method public static getImageProperties(Lcom/startapps/crossx/model/TimeLineModel;)Lcom/startapps/crossx/model/ImageProperties;
    .locals 4

    .line 65
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "tb_properties"

    const/4 v2, 0x0

    const-string v3, "post_id = ?"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/ImageProperties;

    move-result-object v0

    move-object v2, v0

    .line 71
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public static insert(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_properties"

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

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

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 40
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

    .line 41
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object p0

    const-string/jumbo v1, "tb_properties"

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/controller/dao/DBManager;->bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "post_id"

    .line 92
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getImageProperties()Lcom/startapps/crossx/model/ImageProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ImageProperties;->getHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getImageProperties()Lcom/startapps/crossx/model/ImageProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ImageProperties;->getWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/model/TimeLineModel;->getImageProperties()Lcom/startapps/crossx/model/ImageProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapps/crossx/model/ImageProperties;->getFilesize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "filesize"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static update(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 4

    .line 54
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/PropertisImagePublicationBean;->toContentValue(Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/ContentValues;

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

    const-string/jumbo v2, "tb_properties"

    const-string v3, "post_id = ?"

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method
