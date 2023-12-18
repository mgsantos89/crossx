.class public final Lcom/startapps/crossx/viewmodel/HomeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J-\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/HomeViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "mBoxRepository",
        "Lcom/startapps/crossx/rest/repository/BoxRepository;",
        "mContext",
        "mUserLgpdRepository",
        "Lcom/startapps/crossx/rest/repository/UserLgpdRepository;",
        "acceptedUserLgpdTerm",
        "",
        "userId",
        "",
        "boxId",
        "role",
        "version",
        "",
        "(ILjava/lang/Integer;ID)V",
        "getBox",
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
.field private final mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

.field private final mContext:Landroid/app/Application;

.field private final mUserLgpdRepository:Lcom/startapps/crossx/rest/repository/UserLgpdRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 19
    new-instance v0, Lcom/startapps/crossx/rest/repository/BoxRepository;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/rest/repository/BoxRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    .line 20
    new-instance v0, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/rest/repository/UserLgpdRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mUserLgpdRepository:Lcom/startapps/crossx/rest/repository/UserLgpdRepository;

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mContext:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/startapps/crossx/viewmodel/HomeViewModel;)Landroid/app/Application;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mContext:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic access$getMUserLgpdRepository$p(Lcom/startapps/crossx/viewmodel/HomeViewModel;)Lcom/startapps/crossx/rest/repository/UserLgpdRepository;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mUserLgpdRepository:Lcom/startapps/crossx/rest/repository/UserLgpdRepository;

    return-object p0
.end method


# virtual methods
.method public final acceptedUserLgpdTerm(ILjava/lang/Integer;ID)V
    .locals 12

    .line 42
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/startapps/crossx/viewmodel/HomeViewModel$acceptedUserLgpdTerm$1;

    const/4 v11, 0x0

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/startapps/crossx/viewmodel/HomeViewModel$acceptedUserLgpdTerm$1;-><init>(Lcom/startapps/crossx/viewmodel/HomeViewModel;ILjava/lang/Integer;IDLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getBox(I)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/HomeViewModel;->mBoxRepository:Lcom/startapps/crossx/rest/repository/BoxRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/HomeViewModel$getBox$1;-><init>(Lcom/startapps/crossx/viewmodel/HomeViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/rest/repository/BoxRepository;->getBox(Lcom/startapps/crossx/rest/listener/ApiListener;I)V

    return-void
.end method
