.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$3;
.super Ljava/lang/Object;
.source "ExerciseDetailActivity_old.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->setupBestResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$3;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 415
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 419
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
