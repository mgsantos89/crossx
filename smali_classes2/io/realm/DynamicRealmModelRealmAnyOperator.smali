.class final Lio/realm/DynamicRealmModelRealmAnyOperator;
.super Lio/realm/RealmModelOperator;
.source "RealmAnyOperator.java"


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)V
    .locals 0

    .line 452
    invoke-static {p1, p2}, Lio/realm/DynamicRealmModelRealmAnyOperator;->getRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/RealmModelOperator;-><init>(Lio/realm/RealmModel;)V

    return-void
.end method

.method private static getRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/core/NativeRealmAny;",
            ")TT;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 446
    invoke-virtual {p1, v0}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelTableName(Lio/realm/internal/OsSharedRealm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    const-class v1, Lio/realm/DynamicRealmObject;

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getTypedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 457
    const-class v0, Lio/realm/DynamicRealmObject;

    return-object v0
.end method
