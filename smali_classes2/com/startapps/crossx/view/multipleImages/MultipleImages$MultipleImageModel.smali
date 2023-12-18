.class public final Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;
.super Ljava/lang/Object;
.source "MultipleImages.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/multipleImages/MultipleImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipleImageModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
        "",
        "()V",
        "image",
        "",
        "getImage",
        "()Ljava/lang/String;",
        "setImage",
        "(Ljava/lang/String;)V",
        "text",
        "getText",
        "setText",
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


# instance fields
.field private image:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->text:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->image:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->text:Ljava/lang/String;

    return-void
.end method
