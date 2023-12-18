.class Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TimerOptionsFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->onCLickTimer()V

    return-void
.end method
