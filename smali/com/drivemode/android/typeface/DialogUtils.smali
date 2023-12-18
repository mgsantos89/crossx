.class final Lcom/drivemode/android/typeface/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/AlertDialog;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, -0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x2

    .line 24
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x3

    .line 25
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x102000b

    .line 26
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, v0, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p0, v1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p0, v2, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroid/app/Dialog;",
            ">(",
            "Lcom/drivemode/android/typeface/TypefaceHelper;",
            "TD;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 15
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Landroid/app/ProgressDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/DialogUtils;->setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/ProgressDialog;Ljava/lang/String;I)V

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 18
    check-cast p1, Landroid/app/AlertDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/DialogUtils;->setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/AlertDialog;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/ProgressDialog;Ljava/lang/String;I)V
    .locals 1

    const v0, 0x102000b

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
