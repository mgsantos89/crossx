.class public final Lcom/startapps/crossx/model/PhoneModel;
.super Ljava/lang/Object;
.source "PhoneModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/PhoneModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001e\u0010\u0018\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001e\u0010\u001b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/startapps/crossx/model/PhoneModel;",
        "",
        "()V",
        "ddi",
        "",
        "getDdi",
        "()Ljava/lang/String;",
        "setDdi",
        "(Ljava/lang/String;)V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "main",
        "",
        "getMain",
        "()Z",
        "setMain",
        "(Z)V",
        "number",
        "getNumber",
        "setNumber",
        "type",
        "getType",
        "setType",
        "user_id",
        "getUser_id",
        "setUser_id",
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
.field public static final Companion:Lcom/startapps/crossx/model/PhoneModel$Companion;

.field public static final HOME:I = 0x2

.field public static final MOBILE:I = 0x1

.field public static final OTHER:I = 0x4

.field public static final WORK:I = 0x3


# instance fields
.field private ddi:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ddi"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private main:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private user_id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/model/PhoneModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/model/PhoneModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/model/PhoneModel;->Companion:Lcom/startapps/crossx/model/PhoneModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "55"

    .line 20
    iput-object v0, p0, Lcom/startapps/crossx/model/PhoneModel;->ddi:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/model/PhoneModel;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDdi()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/model/PhoneModel;->ddi:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/startapps/crossx/model/PhoneModel;->id:I

    return v0
.end method

.method public final getMain()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/startapps/crossx/model/PhoneModel;->main:Z

    return v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/model/PhoneModel;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/startapps/crossx/model/PhoneModel;->type:I

    return v0
.end method

.method public final getUser_id()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/startapps/crossx/model/PhoneModel;->user_id:I

    return v0
.end method

.method public final setDdi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/startapps/crossx/model/PhoneModel;->ddi:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/startapps/crossx/model/PhoneModel;->id:I

    return-void
.end method

.method public final setMain(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/startapps/crossx/model/PhoneModel;->main:Z

    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/model/PhoneModel;->number:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/startapps/crossx/model/PhoneModel;->type:I

    return-void
.end method

.method public final setUser_id(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/startapps/crossx/model/PhoneModel;->user_id:I

    return-void
.end method
