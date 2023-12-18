.class public final synthetic Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda2;->f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda2;->f$0:Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/GymClassDetailActivity$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;->$r8$lambda$yZbiYRiykP0QW3z5LCSh8oKVYq0(Lcom/startapps/crossx/view/activity/GymClassDetailActivity;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/location/Location;)V

    return-void
.end method
