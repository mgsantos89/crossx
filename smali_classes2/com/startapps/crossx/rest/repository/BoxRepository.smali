.class public final Lcom/startapps/crossx/rest/repository/BoxRepository;
.super Ljava/lang/Object;
.source "BoxRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010J,\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u000c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e0\u0014j\u0008\u0012\u0004\u0012\u00020\u000e`\u00150\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/BoxRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/BoxService;",
        "mRemoteOld",
        "getBox",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/BoxModel;",
        "boxId",
        "",
        "searchByName",
        "search",
        "",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
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

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/BoxService;

.field private mRemoteOld:Lcom/startapps/crossx/rest/interfaces/BoxService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->context:Landroid/content/Context;

    .line 19
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/BoxService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/BoxService;

    .line 20
    new-instance p1, Lcom/startapps/crossx/rest/clients/ApiClient;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-direct {p1, v0}, Lcom/startapps/crossx/rest/clients/ApiClient;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/clients/ApiClient;->serviceCreate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/BoxService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->mRemoteOld:Lcom/startapps/crossx/rest/interfaces/BoxService;

    return-void
.end method


# virtual methods
.method public final getBox(Lcom/startapps/crossx/rest/listener/ApiListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/rest/interfaces/BoxService;->getBox(I)Lretrofit2/Call;

    move-result-object p2

    .line 24
    new-instance v0, Lcom/startapps/crossx/rest/repository/BoxRepository$getBox$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/BoxRepository$getBox$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/BoxRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final searchByName(Ljava/lang/String;Lcom/startapps/crossx/rest/listener/ApiListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/BoxRepository;->mRemoteOld:Lcom/startapps/crossx/rest/interfaces/BoxService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/BoxService;->searchBox(Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;

    invoke-direct {v0, p2, p0}, Lcom/startapps/crossx/rest/repository/BoxRepository$searchByName$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/BoxRepository;)V

    check-cast v0, Lretrofit/Callback;

    invoke-interface {p1, v0}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method
