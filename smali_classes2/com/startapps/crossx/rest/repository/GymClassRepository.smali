.class public final Lcom/startapps/crossx/rest/repository/GymClassRepository;
.super Ljava/lang/Object;
.source "GymClassRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ=\u0010\u0010\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\r0\u0011j\u0008\u0012\u0004\u0012\u00020\r`\u00120\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/repository/GymClassRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "mRemote",
        "Lcom/startapps/crossx/rest/interfaces/GymClassService;",
        "getGymClass",
        "",
        "listener",
        "Lcom/startapps/crossx/rest/listener/ApiListener;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "gymClassId",
        "",
        "gymClasses",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "class_date",
        "",
        "category_id",
        "(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;)V",
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

.field private final mRemote:Lcom/startapps/crossx/rest/interfaces/GymClassService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository;->context:Landroid/content/Context;

    .line 17
    sget-object p1, Lcom/startapps/crossx/rest/clients/RetrofitClient;->Companion:Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;

    const-class v0, Lcom/startapps/crossx/rest/interfaces/GymClassService;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/rest/clients/RetrofitClient$Companion;->createService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/rest/interfaces/GymClassService;

    iput-object p1, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/GymClassService;

    return-void
.end method

.method public static synthetic gymClasses$default(Lcom/startapps/crossx/rest/repository/GymClassRepository;Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/rest/repository/GymClassRepository;->gymClasses(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getGymClass(Lcom/startapps/crossx/rest/listener/ApiListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/GymClassService;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/rest/interfaces/GymClassService;->getGymClass(I)Lretrofit2/Call;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/startapps/crossx/rest/repository/GymClassRepository$getGymClass$1;

    invoke-direct {v0, p1, p0}, Lcom/startapps/crossx/rest/repository/GymClassRepository$getGymClass$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/GymClassRepository;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final gymClasses(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/listener/ApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "class_date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/rest/repository/GymClassRepository;->mRemote:Lcom/startapps/crossx/rest/interfaces/GymClassService;

    invoke-interface {v0, p2, p3}, Lcom/startapps/crossx/rest/interfaces/GymClassService;->gymClasses(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p2

    .line 22
    new-instance p3, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;

    invoke-direct {p3, p1, p0}, Lcom/startapps/crossx/rest/repository/GymClassRepository$gymClasses$1;-><init>(Lcom/startapps/crossx/rest/listener/ApiListener;Lcom/startapps/crossx/rest/repository/GymClassRepository;)V

    check-cast p3, Lretrofit2/Callback;

    invoke-interface {p2, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
