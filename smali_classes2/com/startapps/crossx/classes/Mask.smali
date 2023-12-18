.class public abstract Lcom/startapps/crossx/classes/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insert(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .locals 1

    .line 19
    new-instance v0, Lcom/startapps/crossx/classes/Mask$1;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/classes/Mask$1;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    return-object v0
.end method

.method public static unmask(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[.]"

    const-string v1, ""

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[-]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[/]"

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[(]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[)]"

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ ]"

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
