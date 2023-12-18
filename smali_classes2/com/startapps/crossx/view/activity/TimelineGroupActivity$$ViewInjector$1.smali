.class Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TimelineGroupActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/TimelineGroupActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->onNewMessage()V

    return-void
.end method
