.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;
.super Ljava/lang/Object;
.source "AbstractWorkoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/WodsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

.field final synthetic val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    .line 244
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method
