.class Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialogFragmentDataPayment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->onClickButtonUp()V

    return-void
.end method
