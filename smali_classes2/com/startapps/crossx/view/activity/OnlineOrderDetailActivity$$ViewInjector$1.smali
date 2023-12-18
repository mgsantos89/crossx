.class Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnlineOrderDetailActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;->copyButtonClick()V

    return-void
.end method
