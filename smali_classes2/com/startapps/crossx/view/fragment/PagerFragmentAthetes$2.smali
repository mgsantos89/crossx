.class Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;
.super Ljava/lang/Object;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

.field final synthetic val$cstonViewActionBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;->val$cstonViewActionBar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$2;->val$cstonViewActionBar:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return v1
.end method
