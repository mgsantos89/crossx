.class Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$2;
.super Ljava/lang/Object;
.source "StringPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$2;->this$0:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 74
    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x1

    .line 75
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v1, -0x1000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 81
    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
