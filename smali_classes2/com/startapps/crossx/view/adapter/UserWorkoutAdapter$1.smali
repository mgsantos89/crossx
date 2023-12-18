.class Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;
.super Ljava/lang/Object;
.source "UserWorkoutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    iput p2, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$fgetonAddResult(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;)Lcom/startapps/crossx/Interfaces/ResultWodListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$fgetonAddResult(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;)Lcom/startapps/crossx/Interfaces/ResultWodListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    iget v1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/WorkoutModel;

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/ResultWodListener;->onAddResult(Lcom/startapps/crossx/model/WorkoutModel;)V

    :cond_0
    return-void
.end method
