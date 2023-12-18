.class public final Lcom/startapps/crossx/rest/repository/UserLgpdRepository;
.super Ljava/lang/Object;
.source "UserLgpdRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J;\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0002\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/UserLgpdRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/UserLgpdService;",
        "getCheckInByGymClassId",
        "",
        "userId",
        "",
        "boxId",
        "role",
        "version",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/UserLgdpTermResponse;",
        "(ILjava/lang/Integer;IDLcom/startapps/crossx/rest/listener/ApiListener;)V",
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

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/UserLgpdService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;->context:Landroid/content/Context;

    .line 17
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/UserLgpdService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/UserLgpdService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserLgpdService;

    return-void
.end method


# virtual methods
.method public final getCheckInByGymClassId(ILjava/lang/Integer;IDLcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "ID",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/UserLgdpTermResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "user_id"

    .line 22
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "box_id"

    .line 23
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "role"

    .line 24
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p1, "version"

    .line 25
    invoke-virtual {v0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "accepted"

    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_app"

    .line 27
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/UserLgpdService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json.toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/startapps/crossx/rest/interfaces/UserLgpdService;->userLgdpTerm(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/startapps/crossx/rest/repository/UserLgpdRepository$getCheckInByGymClassId$1;

    invoke-direct {p2, p6, p0}, Lcom/startapps/crossx/rest/repository/UserLgpdRepository$getCheckInByGymClassId$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/UserLgpdRepository;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;->context:Landroid/content/Context;

    return-object v0
.end method
