.class Lio/card/payment/AlwaysValid;
.super Ljava/lang/Object;
.source "AlwaysValid.java"

# interfaces
.implements Lio/card/payment/Validator;


# instance fields
.field private placeholder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/card/payment/AlwaysValid;->placeholder:Ljava/lang/String;

    return-object v0
.end method

.method public hasFullLength()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
