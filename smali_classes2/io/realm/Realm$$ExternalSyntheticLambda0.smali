.class public final synthetic Lio/realm/Realm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/realm/internal/ObjectServerFacade$RealmCacheAccessor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/Realm;
    .locals 0

    invoke-static {p1, p2}, Lio/realm/Realm;->lambda$initializeRealm$0(Lio/realm/RealmConfiguration;Lio/realm/internal/OsSharedRealm$VersionID;)Lio/realm/Realm;

    move-result-object p1

    return-object p1
.end method
