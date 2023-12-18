.class public final Lcom/startapps/crossx/model/GymClassCoachModel;
.super Ljava/lang/Object;
.source "GymClassCoachModel.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/GymClassCoachModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\u0010R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R \u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001e\u0010\u0018\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/startapps/crossx/model/GymClassCoachModel;",
        "Ljava/io/Serializable;",
        "()V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "type",
        "getType",
        "setType",
        "user_id",
        "getUser_id",
        "setUser_id",
        "user_image",
        "",
        "getUser_image",
        "()Ljava/lang/String;",
        "setUser_image",
        "(Ljava/lang/String;)V",
        "user_name",
        "getUser_name",
        "setUser_name",
        "user_nickname",
        "getUser_nickname",
        "setUser_nickname",
        "getNicknameOrName",
        "getTypeName",
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
.field public static final ASSISTENT:I = 0x2

.field public static final COACH:I = 0x1

.field public static final Companion:Lcom/startapps/crossx/model/GymClassCoachModel$Companion;

.field public static final HEADCOACH:I = 0x0

.field public static final INTERN:I = 0x3


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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

.field private user_image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_image"
    .end annotation
.end field

.field private user_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_name"
    .end annotation
.end field

.field private user_nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_nickname"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/model/GymClassCoachModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/model/GymClassCoachModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/model/GymClassCoachModel;->Companion:Lcom/startapps/crossx/model/GymClassCoachModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_name:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_nickname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->id:I

    return v0
.end method

.method public final getNicknameOrName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_nickname:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_nickname:Ljava/lang/String;

    return-object v0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->type:I

    return v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 2

    .line 42
    iget v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->type:I

    if-nez v0, :cond_0

    const-string v0, "Headcoach"

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Coach"

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "Coach assistente"

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "Estagi\u00e1rio"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public final getUser_id()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_id:I

    return v0
.end method

.method public final getUser_image()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_image:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_name()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_nickname()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->id:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->type:I

    return-void
.end method

.method public final setUser_id(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_id:I

    return-void
.end method

.method public final setUser_image(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_image:Ljava/lang/String;

    return-void
.end method

.method public final setUser_name(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_name:Ljava/lang/String;

    return-void
.end method

.method public final setUser_nickname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/model/GymClassCoachModel;->user_nickname:Ljava/lang/String;

    return-void
.end method
