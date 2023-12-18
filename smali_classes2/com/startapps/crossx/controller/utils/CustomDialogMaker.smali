.class public final Lcom/startapps/crossx/controller/utils/CustomDialogMaker;
.super Ljava/lang/Object;
.source "CustomDialogMaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/CustomDialogMaker;",
        "",
        "()V",
        "createCustomDialog",
        "Landroid/app/AlertDialog;",
        "context",
        "Landroid/content/Context;",
        "dialogView",
        "Landroid/view/View;",
        "cancelable",
        "",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;-><init>()V

    sput-object v0, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->INSTANCE:Lcom/startapps/crossx/controller/utils/CustomDialogMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCustomDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapps/crossx/controller/utils/CustomDialogMaker;->createCustomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public final createCustomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/AlertDialog;
    .locals 7

    .line 18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    const-string p2, "alertDialog"

    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
