.class Lcom/startapps/crossx/view/activity/WorkoutClassesActivity$1;
.super Ljava/lang/Object;
.source "WorkoutClassesActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity$1;->this$0:Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)I
    .locals 0

    .line 68
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    check-cast p2, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity$1;->compare(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)I

    move-result p1

    return p1
.end method
