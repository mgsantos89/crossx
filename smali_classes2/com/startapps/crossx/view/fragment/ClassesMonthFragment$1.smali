.class Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$1;
.super Ljava/lang/Object;
.source "ClassesMonthFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->orderListHour()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/startapps/crossx/model/WorkoutHours;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)I
    .locals 0

    .line 119
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 115
    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    check-cast p2, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$1;->compare(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)I

    move-result p1

    return p1
.end method
