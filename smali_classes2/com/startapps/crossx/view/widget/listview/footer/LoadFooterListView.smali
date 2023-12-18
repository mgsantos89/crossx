.class public Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;
.super Landroid/widget/FrameLayout;
.source "LoadFooterListView.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/interfaces/FooterViewLoadingInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;,
        Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;
    }
.end annotation


# instance fields
.field private btRetry:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private onReloadListener:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;

.field private progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;


# direct methods
.method static bridge synthetic -$$Nest$fgetonReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;)Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->onReloadListener:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public errorLoad()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->btRetry:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public initLoading()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spin()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a035f

    .line 94
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const v0, 0x7f0a00bd

    .line 95
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->btRetry:Landroid/widget/Button;

    .line 96
    new-instance v1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$1;-><init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->btRetry:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->onReloadListener:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->progressWheel:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    return-void
.end method
