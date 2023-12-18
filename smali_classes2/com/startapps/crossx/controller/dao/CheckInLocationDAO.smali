.class public final Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;
.super Ljava/lang/Object;
.source "CheckInLocationDAO.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/dao/CheckInLocationDAO$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cJ\u0006\u0010\r\u001a\u00020\u0004R\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;",
        "",
        "()V",
        "mRealm",
        "Lio/realm/Realm;",
        "createFroModel",
        "",
        "model",
        "Lcom/startapps/crossx/model/CheckInLocationModel;",
        "deleteAll",
        "initRealm",
        "listAll",
        "Lio/realm/RealmResults;",
        "realm",
        "Companion",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/startapps/crossx/controller/dao/CheckInLocationDAO$Companion;

.field public static final DB_NAME:Ljava/lang/String; = "check_location.realm"


# instance fields
.field private mRealm:Lio/realm/Realm;
    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->Companion:Lcom/startapps/crossx/controller/dao/CheckInLocationDAO$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->initRealm()V

    return-void
.end method

.method private final initRealm()V
    .locals 2

    .line 23
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v1, "check_location.realm"

    .line 24
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "getInstance(config)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    return-void
.end method


# virtual methods
.method public final createFroModel(Lcom/startapps/crossx/model/CheckInLocationModel;)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    const/4 v1, 0x0

    const-string v2, "mRealm"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const-class v3, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/CheckInLocationModel;

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/model/CheckInLocationModel;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/model/CheckInLocationModel;->setAddress(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getPlace_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/model/CheckInLocationModel;->setPlace_id(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/startapps/crossx/model/CheckInLocationModel;->setLatitude(D)V

    .line 52
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/startapps/crossx/model/CheckInLocationModel;->setLongitude(D)V

    .line 53
    iget-object p1, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public final deleteAll()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    const/4 v1, 0x0

    const-string v2, "mRealm"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lio/realm/Realm;->deleteAll()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public final listAll()Lio/realm/RealmResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lcom/startapps/crossx/model/CheckInLocationModel;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez v0, :cond_0

    const-string v0, "mRealm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-class v1, Lcom/startapps/crossx/model/CheckInLocationModel;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    const-string/jumbo v1, "this.mRealm.where(CheckI\u2026el::class.java).findAll()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final realm()Lio/realm/Realm;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/controller/dao/CheckInLocationDAO;->mRealm:Lio/realm/Realm;

    if-nez v0, :cond_0

    const-string v0, "mRealm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
