.class public final Lcom/startapps/crossx/controller/utils/AlertHelper;
.super Ljava/lang/Object;
.source "AlertHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/AlertHelper;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

.field private static mAlertHelper:Lcom/startapps/crossx/controller/utils/AlertHelper;

.field private static mDialogSuccess:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->Companion:Lcom/startapps/crossx/controller/utils/AlertHelper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/AlertHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMAlertHelper$cp()Lcom/startapps/crossx/controller/utils/AlertHelper;
    .locals 1

    .line 18
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->mAlertHelper:Lcom/startapps/crossx/controller/utils/AlertHelper;

    return-object v0
.end method

.method public static final synthetic access$getMDialogSuccess$cp()Landroid/app/AlertDialog;
    .locals 1

    .line 18
    sget-object v0, Lcom/startapps/crossx/controller/utils/AlertHelper;->mDialogSuccess:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static final synthetic access$setMAlertHelper$cp(Lcom/startapps/crossx/controller/utils/AlertHelper;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->mAlertHelper:Lcom/startapps/crossx/controller/utils/AlertHelper;

    return-void
.end method

.method public static final synthetic access$setMDialogSuccess$cp(Landroid/app/AlertDialog;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/startapps/crossx/controller/utils/AlertHelper;->mDialogSuccess:Landroid/app/AlertDialog;

    return-void
.end method
