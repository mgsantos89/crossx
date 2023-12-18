.class Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;
.super Ljava/lang/Object;
.source "DialogCustomHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->portionToPay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FIRST_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->SECOND_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->THIRD_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->SIXTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->EIGHTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$3;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogCustomPaymentsListener(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;->notAskAgainPayments()V

    :cond_4
    :goto_1
    return-void
.end method
