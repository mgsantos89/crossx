.class public final Lcom/startapps/crossx/rest/repository/CheckInRepository;
.super Ljava/lang/Object;
.source "CheckInRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ$\u0010\u0010\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fJ4\u0010\u0013\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016J,\u0010\u0018\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00110\u0019j\u0008\u0012\u0004\u0012\u00020\u0011`\u001a0\u000c2\u0006\u0010\u0012\u001a\u00020\u000fJ\u001c\u0010\u001b\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c2\u0006\u0010\u0012\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/CheckInRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/CheckInService;",
        "cancelCheckIn",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "",
        "checkInId",
        "",
        "changeCheckIn",
        "Lcom/startapps/crossx/model/CheckInModel;",
        "gymClassId",
        "confirmCheckIn",
        "status",
        "latitude",
        "",
        "longitude",
        "getCheckInByGymClassId",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "makeCheckIn",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->context:Landroid/content/Context;

    .line 19
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/CheckInService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    return-void
.end method


# virtual methods
.method public final cancelCheckIn(Lcom/startapps/crossx/rest/listener/ApiListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/rest/interfaces/CheckInService;->cancelCheckIn(I)Lretrofit2/Call;

    move-result-object p2

    .line 120
    new-instance v0, Lcom/startapps/crossx/rest/repository/CheckInRepository$cancelCheckIn$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/CheckInRepository$cancelCheckIn$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/CheckInRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final changeCheckIn(Lcom/startapps/crossx/rest/listener/ApiListener;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gym_class_id"

    .line 95
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    iget-object p3, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Lcom/startapps/crossx/rest/interfaces/CheckInService;->changeCheckIn(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 97
    new-instance p3, Lcom/startapps/crossx/rest/repository/CheckInRepository$changeCheckIn$1;

    invoke-direct {p3, p1, p0}, Lcom/startapps/crossx/rest/repository/CheckInRepository$changeCheckIn$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/CheckInRepository;)V

    check-cast p3, Lretrofit2/Callback;

    invoke-interface {p2, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final confirmCheckIn(Lcom/startapps/crossx/rest/listener/ApiListener;IIDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;IIDD)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    .line 68
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "latitude"

    .line 69
    invoke-virtual {v0, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p3, "longitude"

    .line 70
    invoke-virtual {v0, p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    iget-object p3, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "json.toString()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2, p4}, Lcom/startapps/crossx/rest/interfaces/CheckInService;->confirmReservation(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 72
    new-instance p3, Lcom/startapps/crossx/rest/repository/CheckInRepository$confirmCheckIn$1;

    invoke-direct {p3, p1, p0}, Lcom/startapps/crossx/rest/repository/CheckInRepository$confirmCheckIn$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/CheckInRepository;)V

    check-cast p3, Lretrofit2/Callback;

    invoke-interface {p2, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getCheckInByGymClassId(Lcom/startapps/crossx/rest/listener/ApiListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/rest/interfaces/CheckInService;->getCheckInsByGymClassId(I)Lretrofit2/Call;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/startapps/crossx/rest/repository/CheckInRepository$getCheckInByGymClassId$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/CheckInRepository$getCheckInByGymClassId$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/CheckInRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final makeCheckIn(Lcom/startapps/crossx/rest/listener/ApiListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gym_class_id"

    .line 43
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    iget-object p2, p0, Lcom/startapps/crossx/rest/repository/CheckInRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/CheckInService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/startapps/crossx/rest/interfaces/CheckInService;->makeCheckIn(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 45
    new-instance v0, Lcom/startapps/crossx/rest/repository/CheckInRepository$makeCheckIn$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/CheckInRepository$makeCheckIn$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/CheckInRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
