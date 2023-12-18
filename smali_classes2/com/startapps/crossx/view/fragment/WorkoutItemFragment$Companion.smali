.class public final Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;
.super Ljava/lang/Object;
.source "WorkoutItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;",
        "",
        "()V",
        "ARG_OBJECT",
        "",
        "ITEM_CAPTION",
        "ITEM_TITLE",
        "ITEM_VIDEOS",
        "dayTrainingListener",
        "Lcom/startapps/crossx/Interfaces/DayTrainingListener;",
        "isMyTraining",
        "",
        "newInstance",
        "Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;",
        "workoutModel",
        "Lcom/startapps/crossx/model/WorkoutModel;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/startapps/crossx/Interfaces/DayTrainingListener;Z)Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;
    .locals 2

    .line 448
    new-instance v0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;-><init>()V

    .line 449
    sget-object v1, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->Companion:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$setDayTrainingListener$cp(Lcom/startapps/crossx/Interfaces/DayTrainingListener;)V

    .line 450
    sget-object p1, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->Companion:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;

    invoke-static {p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$setMyTraining$cp(Z)V

    return-object v0
.end method

.method public final newInstance(Lcom/startapps/crossx/model/WorkoutModel;Z)Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;
    .locals 1

    .line 455
    new-instance v0, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;-><init>()V

    .line 456
    invoke-static {v0, p1}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$setWorkoutDayModel$p(Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;Lcom/startapps/crossx/model/WorkoutModel;)V

    .line 457
    sget-object p1, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->Companion:Lcom/startapps/crossx/view/fragment/WorkoutItemFragment$Companion;

    invoke-static {p2}, Lcom/startapps/crossx/view/fragment/WorkoutItemFragment;->access$setMyTraining$cp(Z)V

    return-object v0
.end method
