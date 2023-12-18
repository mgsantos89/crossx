.class Lcom/startapps/crossx/view/fragment/HistoryFragment$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/HistoryFragment;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/HistoryFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/HistoryFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/HistoryFragment;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/fragment/HistoryFragment;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;->getHistoryList()V

    return-void
.end method
