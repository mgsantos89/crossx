.class Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChronometerActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->onButtonCloseClick()V

    return-void
.end method
