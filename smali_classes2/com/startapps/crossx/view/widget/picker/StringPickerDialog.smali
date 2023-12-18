.class public Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "StringPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private current:I

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;)Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mListener:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->current:I

    return-void
.end method

.method private getValue(I)Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mListener:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mActivity:Landroid/app/Activity;

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 40
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d010d

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a03ce

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/picker/StringPicker;

    .line 44
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const v3, 0x7f120277

    .line 49
    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->setValues([Ljava/lang/String;)V

    const v3, 0x7f120276

    .line 52
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120278

    .line 53
    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120275

    .line 59
    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getValue(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$1;-><init>(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;Lcom/startapps/crossx/view/widget/picker/StringPicker;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120273

    .line 65
    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    iget p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->current:I

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->setCurrent(I)V

    .line 70
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$2;-><init>(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "params is null!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentItem(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->current:I

    return-void
.end method

.method public setOnClickListener(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->mListener:Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;

    return-void
.end method
