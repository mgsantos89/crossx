.class Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$2;
.super Ljava/lang/Object;
.source "GroupUserPagerFragment$$ViewInjector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-virtual {p1, p3}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->onDeleteGroup(I)Z

    move-result p1

    return p1
.end method
