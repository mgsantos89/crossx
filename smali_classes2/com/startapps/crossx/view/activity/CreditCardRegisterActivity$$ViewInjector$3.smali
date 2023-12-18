.class Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CreditCardRegisterActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$3;->val$target:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity$$ViewInjector$3;->val$target:Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;->favButtonClick()V

    return-void
.end method
