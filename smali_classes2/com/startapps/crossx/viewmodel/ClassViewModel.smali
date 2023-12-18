.class public final Lcom/startapps/crossx/viewmodel/ClassViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ClassViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u0016R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/ClassViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "gymClassList",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
        "getGymClassList",
        "()Landroidx/lifecycle/LiveData;",
        "setGymClassList",
        "(Landroidx/lifecycle/LiveData;)V",
        "mGymClassList",
        "Landroidx/lifecycle/MutableLiveData;",
        "mGymClassRepository",
        "Lcom/startapps/crossx/rest/repository/GymClassRepository;",
        "getGymClass",
        "",
        "class_date",
        "",
        "category_id",
        "",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
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
.field private gymClassList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGymClassList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 14
    new-instance v0, Lcom/startapps/crossx/rest/repository/GymClassRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/GymClassRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    .line 15
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->mGymClassList:Landroidx/lifecycle/MutableLiveData;

    .line 17
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMGymClassList$p(Lcom/startapps/crossx/viewmodel/ClassViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->mGymClassList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic getGymClass$default(Lcom/startapps/crossx/viewmodel/ClassViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/viewmodel/ClassViewModel;->getGymClass(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getGymClass(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "class_date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/ClassViewModel$getGymClass$1;-><init>(Lcom/startapps/crossx/viewmodel/ClassViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/startapps/crossx/rest/repository/GymClassRepository;->gymClasses(Lcom/startapps/crossx/rest/listener/ApiListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final getGymClassList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setGymClassList(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/ClassViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-void
.end method
