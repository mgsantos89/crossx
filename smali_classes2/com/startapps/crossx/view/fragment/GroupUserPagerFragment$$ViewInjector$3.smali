.class Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "GroupUserPagerFragment$$ViewInjector.java"


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

    .line 37
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$3;->val$target:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$$ViewInjector$3;->val$target:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->onCreateGroup()V

    return-void
.end method
