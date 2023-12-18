.class Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ToPayFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/ToPayFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/fragment/ToPayFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ToPayFragment;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ToPayFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/fragment/ToPayFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/ToPayFragment;->toPay()V

    return-void
.end method
