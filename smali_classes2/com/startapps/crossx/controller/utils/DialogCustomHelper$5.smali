.class Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;
.super Ljava/lang/Object;
.source "DialogCustomHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->paymentDone()V
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

    .line 151
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TWELFTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->THIRD_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTEENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$5;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
