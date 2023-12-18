.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;
.super Ljava/lang/Object;
.source "MyTrainingFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

.field final synthetic val$cstonViewActionBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iput-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;->val$cstonViewActionBar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$1;->val$cstonViewActionBar:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return v1
.end method
