.class public Lcom/startapps/crossx/controller/utils/SnackbarUtils;
.super Ljava/lang/Object;
.source "SnackbarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a03b0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, -0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
