.class Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector$1;
.super Ljava/lang/Object;
.source "NotificationsFragment$$ViewInjector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/NotificationsFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/NotificationsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/NotificationsFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;->onClickNotification()V

    return-void
.end method
