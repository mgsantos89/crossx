.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ASYNC_QUERY_WRONG_THREAD_MESSAGE:Ljava/lang/String; = "Async query cannot be created on current thread."

.field private static final EMPTY_VALUES:Ljava/lang/String; = "Non-empty \'values\' must be provided."

.field private static final PRIMITIVE_LISTS_NOT_SUPPORTED_ERROR_MESSAGE:Ljava/lang/String; = "Queries on primitive lists are not yet supported"

.field private static final TYPE_MISMATCH:Ljava/lang/String; = "Field \'%s\': type mismatch - %s expected."


# instance fields
.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final forValues:Z

.field private final osCollection:Lio/realm/internal/OsCollection;

.field private final query:Lio/realm/internal/TableQuery;

.field private final realm:Lio/realm/BaseRealm;

.field private final schema:Lio/realm/RealmObjectSchema;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 175
    iput-object p3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 176
    invoke-static {p3}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 182
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 183
    iput-object p2, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    .line 184
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Queries on primitive lists are not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 225
    iput-object p3, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 227
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 228
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 229
    invoke-virtual {p2}, Lio/realm/internal/OsList;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    .line 230
    iput-object p2, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsSet;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsSet;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 190
    iput-object p3, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 191
    invoke-static {p3}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 197
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 198
    iput-object p2, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    .line 199
    invoke-virtual {p2}, Lio/realm/internal/OsSet;->getQuery()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Queries on primitive lists are not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Ljava/lang/String;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 205
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 207
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 208
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 209
    invoke-virtual {p1}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    return-void
.end method

.method private constructor <init>(Lio/realm/Realm;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 145
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 146
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 152
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    const/4 p2, 0x0

    .line 153
    iput-object p2, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    .line 154
    invoke-virtual {p1}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Queries on primitive lists are not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iget-object v0, p1, Lio/realm/RealmResults;->baseRealm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 160
    iput-object p2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 161
    invoke-static {p2}, Lio/realm/RealmQuery;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 167
    invoke-virtual {p1}, Lio/realm/RealmResults;->getTable()Lio/realm/internal/Table;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    const/4 p2, 0x0

    .line 168
    iput-object p2, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    .line 169
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Queries on primitive lists are not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lio/realm/RealmResults;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iget-object v0, p1, Lio/realm/RealmResults;->baseRealm:Lio/realm/BaseRealm;

    iput-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 215
    iput-object p2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    const/4 v1, 0x0

    .line 216
    iput-boolean v1, p0, Lio/realm/RealmQuery;->forValues:Z

    .line 217
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    .line 218
    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object p2

    iput-object p2, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    .line 219
    invoke-virtual {p1}, Lio/realm/RealmResults;->getOsResults()Lio/realm/internal/OsResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/OsResults;->where()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    return-void
.end method

.method static createDynamicQuery(Lio/realm/DynamicRealm;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Ljava/lang/String;)V

    return-object v0
.end method

.method static createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/Realm;Ljava/lang/Class;)V

    return-object v0
.end method

.method static createQueryFromList(Lio/realm/RealmList;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object p0, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmList;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {p0}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v2

    iget-object p0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p0}, Lio/realm/RealmQuery;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method static createQueryFromResult(Lio/realm/RealmResults;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->className:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lio/realm/RealmQuery;

    iget-object v1, p0, Lio/realm/RealmResults;->classSpec:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lio/realm/RealmQuery;-><init>(Lio/realm/RealmResults;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method private createRealmResults(Lio/realm/internal/TableQuery;Z)Lio/realm/RealmResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Z)",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2849
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, p1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object p1

    .line 2851
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2852
    new-instance v0, Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    goto :goto_0

    .line 2854
    :cond_0
    new-instance v0, Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 2857
    invoke-virtual {v0}, Lio/realm/RealmResults;->load()Z

    :cond_1
    return-object v0
.end method

.method private getSourceRowIndexForFirstObject()J
    .locals 2

    .line 2864
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->find()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isClassForRealmModel(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 140
    const-class v0, Lio/realm/RealmModel;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private isDynamicQuery()Z
    .locals 1

    .line 2759
    iget-object v0, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lazyFindAll()Lio/realm/internal/OsResults;
    .locals 2

    .line 2477
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2478
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Z)Lio/realm/RealmResults;

    move-result-object v0

    iget-object v0, v0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    return-object v0
.end method

.method private static native nativeSerializeQuery(J)Ljava/lang/String;
.end method


# virtual methods
.method public alwaysFalse()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2626
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2627
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->alwaysFalse()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public alwaysTrue()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2617
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2618
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->alwaysTrue()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public and()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1910
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    return-object p0
.end method

.method public average(Ljava/lang/String;)D
    .locals 4

    .line 2238
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2239
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2241
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2242
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2246
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "int, float or double. For Decimal128 use `averageDecimal128` method."

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2248
    :cond_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageFloat(J)D

    move-result-wide v0

    return-wide v0

    .line 2244
    :cond_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageInt(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public averageDecimal128(Ljava/lang/String;)Lorg/bson/types/Decimal128;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2267
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2268
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2270
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2271
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public averageRealmAny(Ljava/lang/String;)Lorg/bson/types/Decimal128;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2286
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2287
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2289
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2290
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->averageRealmAny(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1
.end method

.method public beginGroup()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1876
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->beginGroup()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public beginsWith(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1696
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public beginsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1726
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 1727
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->beginsWith(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 1729
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->beginsWithInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1684
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public beginsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 1709
    invoke-static {p2, v0}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1711
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;DD)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1552
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;FF)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1566
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1567
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;II)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1522
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;JJ)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1536
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1537
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1596
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1597
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1582
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public between(Ljava/lang/String;Lorg/bson/types/Decimal128;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1612
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-static {p3}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->between(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public contains(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1637
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1667
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 1668
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->contains(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 1670
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->containsInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1625
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 1650
    invoke-static {p2, v0}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1652
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->contains(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public containsEntry(Ljava/lang/String;Ljava/util/Map$Entry;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "entry"

    .line 2186
    invoke-static {p2, v0}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2188
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Object;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lio/realm/internal/TableQuery;->containsEntry(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsKey(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1962
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1963
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsKey(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2159
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Lio/realm/RealmModel;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmModel;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2173
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1977
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1991
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2046
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2047
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2061
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2018
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2019
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2033
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2004
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2005
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2075
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2102
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2103
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2144
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2145
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2117
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2131
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public containsValue(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2088
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2089
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf([B)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->containsValue(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public count()J
    .locals 2

    .line 2435
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2436
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2443
    invoke-direct {p0}, Lio/realm/RealmQuery;->lazyFindAll()Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs distinct(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2585
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2586
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2588
    aput-object p1, v0, v1

    .line 2589
    :goto_0
    array-length p1, p2

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, v1, 0x1

    .line 2590
    aget-object v1, p2, v1

    aput-object v1, v0, p1

    move v1, p1

    goto :goto_0

    .line 2593
    :cond_0
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object p2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p2}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lio/realm/internal/TableQuery;->distinct(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public endGroup()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1887
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1888
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->endGroup()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public endsWith(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1755
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->endsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1784
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1785
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 1786
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->endsWith(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 1788
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->endsWithInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1743
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 1768
    invoke-static {p2, v0}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1770
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->endsWith(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 508
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 321
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 322
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 324
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->equalToInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 480
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 381
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 452
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 466
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 423
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 438
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 409
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 292
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 306
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 494
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 367
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 339
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 353
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public equalTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 395
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf([B)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->equalTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public findAll()Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2463
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2464
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2465
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Z)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findAllAsync()Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 2491
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2492
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 2493
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmQuery;->createRealmResults(Lio/realm/internal/TableQuery;Z)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public findFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2778
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2779
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2781
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2786
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->getSourceRowIndexForFirstObject()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    .line 2788
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findFirstAsync()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2802
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2804
    iget-boolean v0, p0, Lio/realm/RealmQuery;->forValues:Z

    if-nez v0, :cond_3

    .line 2808
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Async query cannot be created on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 2810
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    goto :goto_0

    .line 2821
    :cond_0
    new-instance v0, Lio/realm/internal/PendingRow;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/PendingRow;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Z)V

    .line 2824
    :goto_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->isDynamicQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2826
    new-instance v1, Lio/realm/DynamicRealmObject;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-direct {v1, v2, v0}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    goto :goto_1

    .line 2829
    :cond_1
    iget-object v5, p0, Lio/realm/RealmQuery;->clazz:Ljava/lang/Class;

    .line 2831
    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v4

    iget-object v6, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    .line 2832
    invoke-virtual {v6}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v8

    const/4 v9, 0x0

    .line 2833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v7, v0

    .line 2831
    invoke-virtual/range {v4 .. v10}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    .line 2836
    :goto_1
    instance-of v2, v0, Lio/realm/internal/PendingRow;

    if-eqz v2, :cond_2

    .line 2837
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    .line 2838
    check-cast v0, Lio/realm/internal/PendingRow;

    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/PendingRow;->setFrontEnd(Lio/realm/internal/PendingRow$FrontEnd;)V

    :cond_2
    return-object v1

    .line 2805
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findFirstAsync() available only when type parameter \'E\' is implementing RealmModel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 2732
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 2733
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/RealmQuery;->nativeSerializeQuery(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryPointer()J
    .locals 2

    .line 2755
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealm()Lio/realm/Realm;
    .locals 2

    .line 2716
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2719
    :cond_0
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2720
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_1

    .line 2723
    check-cast v0, Lio/realm/Realm;

    return-object v0

    .line 2721
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method is only available for typed Realms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeQueried()Ljava/lang/String;
    .locals 1

    .line 2743
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1045
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1059
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1017
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1031
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1087
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1073
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1129
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1101
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThan(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1115
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1171
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1185
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1143
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1157
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1255
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1199
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1241
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1213
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1227
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->greaterThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public in(Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_3

    .line 766
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 770
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 771
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 772
    aget-object v2, p2, v1

    if-nez v2, :cond_1

    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object v2

    :cond_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 774
    :cond_2
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 767
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 718
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 721
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 722
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 723
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 719
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 571
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 575
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 576
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 572
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 669
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 673
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 674
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 670
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 693
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 696
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 697
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 698
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 694
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 619
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 622
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 623
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 624
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 620
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 644
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 648
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 649
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 645
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 595
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 598
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 599
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 600
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 596
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 522
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public in(Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_4

    .line 538
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 541
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 542
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 543
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    .line 544
    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 546
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_2
    sget-object p2, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, p2, :cond_3

    .line 551
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object p3, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p3}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_3

    .line 553
    :cond_3
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object p3, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p3}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p3

    invoke-virtual {p3}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v0}, Lio/realm/internal/TableQuery;->inInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_3

    .line 539
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_3
    return-object p0
.end method

.method public in(Ljava/lang/String;[Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 3
    .param p2    # [Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-eqz p2, :cond_2

    .line 742
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 745
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 746
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 747
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    :cond_1
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->in(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_2

    .line 743
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->alwaysFalse()Lio/realm/RealmQuery;

    :goto_2
    return-object p0
.end method

.method public isEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1935
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isEmpty(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNotEmpty(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1949
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNotEmpty(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNotNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 279
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNotNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 265
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/TableQuery;->isNull(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public isValid()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->osCollection:Lio/realm/internal/OsCollection;

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Lio/realm/internal/OsCollection;->isValid()Z

    move-result v0

    return v0

    .line 247
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/internal/Table;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public lessThan(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1339
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1353
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1269
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1282
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1283
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1381
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1367
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1325
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1297
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThan(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1311
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThan(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;D)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1465
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;F)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1479
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;I)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1395
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1409
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1507
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1493
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1451
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1423
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1437
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->lessThanOrEqual(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public like(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1822
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->like(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1860
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 1861
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->like(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 1863
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->likeInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1806
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    .line 1839
    invoke-static {p2, v0}, Lio/realm/internal/Util;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1841
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->like(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public limit(J)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2608
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2609
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/TableQuery;->limit(J)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2373
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2374
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2376
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2377
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2385
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 2387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "int, float or double"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumDouble(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2381
    :cond_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumFloat(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 2379
    :cond_3
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumInt(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public maxRealmAny(Ljava/lang/String;)Lio/realm/RealmAny;
    .locals 4

    .line 2420
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2421
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2423
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2424
    new-instance p1, Lio/realm/RealmAny;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/TableQuery;->maximumRealmAny(J)Lio/realm/internal/core/NativeRealmAny;

    move-result-object v0

    invoke-static {v2, v0}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object p1
.end method

.method public maximumDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2403
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2404
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2406
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2407
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->maximumDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2305
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2306
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2308
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2309
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2317
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 2319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "int, float or double"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2315
    :cond_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumDouble(J)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2313
    :cond_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumFloat(J)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 2311
    :cond_3
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumInt(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public minRealmAny(Ljava/lang/String;)Lio/realm/RealmAny;
    .locals 4

    .line 2354
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2355
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2357
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2358
    new-instance p1, Lio/realm/RealmAny;

    iget-object v2, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/TableQuery;->minimumRealmAny(J)Lio/realm/internal/core/NativeRealmAny;

    move-result-object v0

    invoke-static {v2, v0}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object p1
.end method

.method public minimumDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2336
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2337
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2339
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2340
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->minimumDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public not()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1921
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->not()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 877
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 817
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    if-ne p3, v0, :cond_0

    .line 818
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 820
    :cond_0
    iget-object p3, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lio/realm/internal/TableQuery;->notEqualToInsensitive(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 989
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Byte;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Byte;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 891
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Byte;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Double;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Double;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 961
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Float;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Float;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 975
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Float;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 933
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 947
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/Short;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/lang/Short;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 919
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Short;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 788
    sget-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/Case;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 802
    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Lio/realm/RealmAny;Lio/realm/Case;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/util/Date;)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1003
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/Date;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Ljava/util/UUID;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 863
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Ljava/util/UUID;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Lorg/bson/types/Decimal128;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/Decimal128;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 835
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/Decimal128;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;Lorg/bson/types/ObjectId;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bson/types/ObjectId;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 849
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf(Lorg/bson/types/ObjectId;)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public notEqualTo(Ljava/lang/String;[B)Lio/realm/RealmQuery;
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 905
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-static {p2}, Lio/realm/RealmAny;->valueOf([B)Lio/realm/RealmAny;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->notEqualTo(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public or()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 1899
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->or()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public varargs rawPredicate(Ljava/lang/String;[Ljava/lang/Object;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2683
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2687
    array-length v0, p2

    new-array v0, v0, [Lio/realm/RealmAny;

    const/4 v1, 0x0

    .line 2688
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 2689
    aget-object v2, p2, v1

    invoke-static {v2}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Object;)Lio/realm/RealmAny;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2693
    :cond_0
    :try_start_0
    iget-object p2, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lio/realm/internal/TableQuery;->rawPredicate(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)Lio/realm/internal/TableQuery;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 2695
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Illegal Argument: Request for argument at index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2696
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2698
    :cond_1
    throw p1

    .line 2684
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-null \'predicate\' required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2507
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2508
    sget-object v0, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2523
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2524
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lio/realm/Sort;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 2542
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2543
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Lio/realm/Sort;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object p4, p3, p2

    invoke-virtual {p0, p1, p3}, Lio/realm/RealmQuery;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2559
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 2562
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 2566
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2568
    iget-object v0, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmSchema;->getKeyPathMapping()Lio/realm/internal/objectstore/OsKeyPathMapping;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->sort(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/TableQuery;

    return-object p0

    .line 2563
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of fields and sort orders do not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2560
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must provide at least one sort order."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4

    .line 2205
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2206
    iget-object v0, p0, Lio/realm/RealmQuery;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkAllowQueriesOnUiThread()V

    .line 2208
    iget-object v0, p0, Lio/realm/RealmQuery;->schema:Lio/realm/RealmObjectSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmObjectSchema;->getAndCheckFieldColumnKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 2209
    sget-object v2, Lio/realm/RealmQuery$1;->$SwitchMap$io$realm$RealmFieldType:[I

    iget-object v3, p0, Lio/realm/RealmQuery;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2219
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumRealmAny(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 2221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "int, float or double"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Field \'%s\': type mismatch - %s expected."

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2217
    :cond_1
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumDecimal128(J)Lorg/bson/types/Decimal128;

    move-result-object p1

    return-object p1

    .line 2215
    :cond_2
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2213
    :cond_3
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumFloat(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2211
    :cond_4
    iget-object p1, p0, Lio/realm/RealmQuery;->query:Lio/realm/internal/TableQuery;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/TableQuery;->sumInt(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
