.class public final Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;
.super Ljava/lang/Object;
.source "BillingAddressRegister.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/BillingAddressRegister;->registerEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;->this$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 79
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;->this$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->access$getMTextMaskZipcode$p(Lcom/startapps/crossx/view/activity/BillingAddressRegister;)Lcom/startapps/crossx/controller/utils/MaskText;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mTextMaskZipcode"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/MaskText;->stringUnMask()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/BillingAddressRegister$registerEvents$1;->this$0:Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    invoke-static {p2, p1}, Lcom/startapps/crossx/view/activity/BillingAddressRegister;->access$getAddressByZipCode(Lcom/startapps/crossx/view/activity/BillingAddressRegister;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
