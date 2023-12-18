.class Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;
.super Ljava/lang/Object;
.source "StringPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$stringPicker:Lcom/startapps/crossx/view/widget/picker/StringPicker;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;Lcom/startapps/crossx/view/widget/picker/StringPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;->this$0:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    iput-object p2, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;->val$stringPicker:Lcom/startapps/crossx/view/widget/picker/StringPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;->this$0:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    invoke-static {p1}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->-$$Nest$fgetmListener(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;)Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;->val$stringPicker:Lcom/startapps/crossx/view/widget/picker/StringPicker;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->getCurrentValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;->onClick(Ljava/lang/String;)V

    return-void
.end method
