.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;
.super Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 158
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    invoke-super {p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$402(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .line 161
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 163
    fill-array-data v3, :array_0

    const-string v4, "rotation"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [F

    .line 164
    fill-array-data v2, :array_1

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 166
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method

.method updateBackground()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->mPlusColor:I

    .line 150
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->mColorNormal:I

    .line 151
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->mColorPressed:I

    .line 152
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$300(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;->mStrokeVisible:Z

    .line 153
    invoke-super {p0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->updateBackground()V

    return-void
.end method
