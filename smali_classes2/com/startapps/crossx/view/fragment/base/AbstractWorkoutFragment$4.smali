.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;
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

.field final synthetic val$notResult:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;->val$notResult:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;->val$notResult:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method
