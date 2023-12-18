.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;
.super Ljava/lang/Object;
.source "AbstractWorkoutFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->showListCategorie(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

.field final synthetic val$btSetCategorie:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;->val$btSetCategorie:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object p2, p1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/WokoutCategorie;

    iput-object p2, p1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    .line 265
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;->val$btSetCategorie:Landroid/widget/Button;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
