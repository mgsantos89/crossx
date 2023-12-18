.class public Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;
.super Ljava/lang/Object;
.source "AthletesPublicationBean.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_USER_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final COLUMN_USER_CITY:Ljava/lang/String; = "city"

.field public static final COLUMN_USER_EMAIL:Ljava/lang/String; = "email"

.field public static final COLUMN_USER_FACEBOOK_ID:Ljava/lang/String; = "facebookID"

.field public static final COLUMN_USER_GENDER:Ljava/lang/String; = "gender"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_USER_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_USER_PHONE:Ljava/lang/String; = "phone"

.field public static final COLUMN_USER_PICTURE:Ljava/lang/String; = "picture"

.field public static final COLUMN_USER_PRIVACY:Ljava/lang/String; = "privacy"

.field public static final COLUMN_USER_ROLE:Ljava/lang/String; = "role"

.field public static final COLUMN_USER_WEIGHT:Ljava/lang/String; = "weight"

.field public static final TABLE_USER:Ljava/lang/String; = "tb_user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTableString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/startapps/crossx/controller/dao/util/TableBuilder;

    const-string/jumbo v1, "tb_user"

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "_id"

    const-string v3, "INTEGER"

    .line 37
    invoke-virtual {v0, v2, v3, v1}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->setPrimaryKey(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "id"

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v3, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "facebookID"

    const-string v4, "TEXT"

    .line 39
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "email"

    .line 40
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "name"

    .line 41
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "privacy"

    .line 42
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "birthday"

    .line 43
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "gender"

    .line 44
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v1, "weight"

    .line 45
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "city"

    .line 46
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "role"

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "picture"

    .line 48
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "phone"

    .line 49
    invoke-virtual {v0, v1, v4, v2}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v0}, Lcom/startapps/crossx/controller/dao/util/TableBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAll()Z
    .locals 2

    .line 75
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_user"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/dao/DBManager;->deleteAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static featchUser(Lcom/startapps/crossx/model/UserModel;)Lcom/startapps/crossx/model/UserModel;
    .locals 6

    .line 102
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_user"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/startapps/crossx/controller/dao/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;
    .locals 3

    const-string v0, "_id"

    .line 116
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 118
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    const-string v1, "id"

    .line 119
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setId(Ljava/lang/String;)V

    const-string v1, "facebookID"

    .line 120
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setFacebookID(Ljava/lang/String;)V

    const-string v1, "email"

    .line 121
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setEmail(Ljava/lang/String;)V

    const-string v1, "name"

    .line 122
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setName(Ljava/lang/String;)V

    const-string v1, "privacy"

    .line 123
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setPrivacity(I)V

    const-string v1, "birthday"

    .line 124
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBirthday(Ljava/lang/String;)V

    const-string v1, "gender"

    .line 125
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/Gender;->findByFullGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setGender(Lcom/startapps/crossx/model/enuns/Gender;)V

    const-string/jumbo v1, "weight"

    .line 126
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setWeight(Ljava/lang/String;)V

    const-string v1, "city"

    .line 127
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setCity(Ljava/lang/String;)V

    const-string v1, "role"

    .line 128
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setRole(Ljava/lang/String;)V

    const-string v1, "picture"

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/model/UserModel;->setImgUser(Ljava/lang/String;)V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "fromCursor "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fromCursor"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getListUsers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_user"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Lcom/startapps/crossx/controller/dao/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-static {v0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->fromCursor(Landroid/database/Cursor;)Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public static insert(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    const-string/jumbo v1, "tb_user"

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->toContentValue(Lcom/startapps/crossx/model/UserModel;)Landroid/content/ContentValues;

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
            "Lcom/startapps/crossx/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 57
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/UserModel;

    add-int/lit8 v3, v1, 0x1

    .line 58
    invoke-static {v2}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->toContentValue(Lcom/startapps/crossx/model/UserModel;)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object p0

    const-string/jumbo v1, "tb_user"

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/controller/dao/DBManager;->bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)V

    return-void
.end method

.method public static toContentValue(Lcom/startapps/crossx/model/UserModel;)Landroid/content/ContentValues;
    .locals 3

    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "facebookID"

    .line 142
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 143
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "email"

    .line 144
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getPrivacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "birthday"

    .line 146
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "weight"

    .line 148
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "city"

    .line 149
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role"

    .line 150
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "picture"

    .line 151
    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static update(Lcom/startapps/crossx/model/UserModel;)V
    .locals 4

    .line 71
    invoke-static {}, Lcom/startapps/crossx/controller/dao/DBManager;->getInstance()Lcom/startapps/crossx/controller/dao/DBManager;

    move-result-object v0

    invoke-static {p0}, Lcom/startapps/crossx/controller/dao/AthletesPublicationBean;->toContentValue(Lcom/startapps/crossx/model/UserModel;)Landroid/content/ContentValues;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "tb_user"

    const-string v3, "id = ?"

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/startapps/crossx/controller/dao/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method
