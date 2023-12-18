.class Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;
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

    .line 131
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 135
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogCustomPaymentsListener(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetnotification(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/model/Notification;

    move-result-object v0

    iget-wide v0, v0, Lcom/startapps/crossx/model/Notification;->membershipId:J

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;->enableAutomaticPayments(J)V

    goto/16 :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ELEVENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 138
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->TWELFTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 140
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogCustomPaymentsListener(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetnotification(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/model/Notification;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;->toPayNowPayments(Lcom/startapps/crossx/model/Notification;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->THIRD_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 142
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogCustomPaymentsListener(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetnotification(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Lcom/startapps/crossx/model/Notification;

    move-result-object v0

    iget-wide v0, v0, Lcom/startapps/crossx/model/Notification;->membershipId:J

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/DialogCustomPaymentsListener;->changeCardPayments(J)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTEENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 144
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetdialogType(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)I

    move-result p1

    sget-object v0, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->FOURTEENTH_DIALOG:Lcom/startapps/crossx/model/enuns/TypeDialogEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TypeDialogEnum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 146
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/DialogCustomHelper$4;->this$0:Lcom/startapps/crossx/controller/utils/DialogCustomHelper;

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/DialogCustomHelper;->-$$Nest$fgetbuilder(Lcom/startapps/crossx/controller/utils/DialogCustomHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
