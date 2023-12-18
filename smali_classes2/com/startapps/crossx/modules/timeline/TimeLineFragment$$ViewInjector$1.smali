.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TimeLineFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimeLineFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/timeline/TimeLineFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setPostClick()V

    return-void
.end method
