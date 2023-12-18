.class Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ClassesMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

.field final synthetic val$hour:Lcom/startapps/crossx/model/WorkoutHours;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/model/WorkoutHours;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;->val$hour:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .line 238
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Click"

    const-string v1, "Check-in - Atribuir treino"

    const-string v2, "Button"

    invoke-virtual {p1, v2, v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;->val$hour:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->getIdWorkout()J

    move-result-wide v0

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$3;->val$hour:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->atribuirTreino(JJ)V

    return-void
.end method
