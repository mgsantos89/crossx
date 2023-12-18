.class public final Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WorkoutItemViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aR&\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR&\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00070\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "cancelCheckIn",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;",
        "Ljava/lang/Void;",
        "getCancelCheckIn",
        "()Landroidx/lifecycle/LiveData;",
        "setCancelCheckIn",
        "(Landroidx/lifecycle/LiveData;)V",
        "gymClassList",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "getGymClassList",
        "setGymClassList",
        "mCancelCheckIn",
        "Landroidx/lifecycle/MutableLiveData;",
        "mCheckInRepository",
        "Lcom/startapps/crossx/rest/repository/CheckInRepository;",
        "mGymClass",
        "mGymClassRepository",
        "Lcom/startapps/crossx/rest/repository/GymClassRepository;",
        "",
        "checkInId",
        "",
        "getGymClassDetail",
        "gymClassId",
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
.field private cancelCheckIn:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private gymClassList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCancelCheckIn:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCheckInRepository:Lcom/startapps/crossx/rest/repository/CheckInRepository;

.field private final mGymClass:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 14
    new-instance v0, Lcom/startapps/crossx/rest/repository/CheckInRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/CheckInRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mCheckInRepository:Lcom/startapps/crossx/rest/repository/CheckInRepository;

    .line 15
    new-instance v0, Lcom/startapps/crossx/rest/repository/GymClassRepository;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/rest/repository/GymClassRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mCancelCheckIn:Landroidx/lifecycle/MutableLiveData;

    .line 18
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->cancelCheckIn:Landroidx/lifecycle/LiveData;

    .line 19
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mGymClass:Landroidx/lifecycle/MutableLiveData;

    .line 20
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getMCancelCheckIn$p(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mCancelCheckIn:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMGymClass$p(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mGymClass:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final cancelCheckIn(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mCheckInRepository:Lcom/startapps/crossx/rest/repository/CheckInRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$cancelCheckIn$1;-><init>(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/rest/repository/CheckInRepository;->cancelCheckIn(Lcom/startapps/crossx/rest/listener/ApiListener;I)V

    return-void
.end method

.method public final getCancelCheckIn()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->cancelCheckIn:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getGymClassDetail(I)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->mGymClassRepository:Lcom/startapps/crossx/rest/repository/GymClassRepository;

    new-instance v1, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$getGymClassDetail$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel$getGymClassDetail$1;-><init>(Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;)V

    check-cast v1, Lcom/startapps/crossx/rest/listener/ApiListener;

    invoke-virtual {v0, v1, p1}, Lcom/startapps/crossx/rest/repository/GymClassRepository;->getGymClass(Lcom/startapps/crossx/rest/listener/ApiListener;I)V

    return-void
.end method

.method public final getGymClassList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setCancelCheckIn(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->cancelCheckIn:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final setGymClassList(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/startapps/crossx/viewmodel/WorkoutItemViewModel;->gymClassList:Landroidx/lifecycle/LiveData;

    return-void
.end method
