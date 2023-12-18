.class Lcom/startapps/crossx/view/fragment/ToPayFragment$1;
.super Ljava/lang/Object;
.source "ToPayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ToPayFragment;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ToPayFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ToPayFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/fragment/ToPayFragment;)Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getToPay()V

    return-void
.end method
