.class Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EmonConfigActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->btInitEmon()V

    return-void
.end method
