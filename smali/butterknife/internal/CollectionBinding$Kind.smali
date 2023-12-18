.class final enum Lbutterknife/internal/CollectionBinding$Kind;
.super Ljava/lang/Enum;
.source "CollectionBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/CollectionBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbutterknife/internal/CollectionBinding$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbutterknife/internal/CollectionBinding$Kind;

.field public static final enum ARRAY:Lbutterknife/internal/CollectionBinding$Kind;

.field public static final enum LIST:Lbutterknife/internal/CollectionBinding$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lbutterknife/internal/CollectionBinding$Kind;

    const-string v1, "ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/CollectionBinding$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/CollectionBinding$Kind;->ARRAY:Lbutterknife/internal/CollectionBinding$Kind;

    .line 6
    new-instance v1, Lbutterknife/internal/CollectionBinding$Kind;

    const-string v2, "LIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbutterknife/internal/CollectionBinding$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbutterknife/internal/CollectionBinding$Kind;->LIST:Lbutterknife/internal/CollectionBinding$Kind;

    .line 4
    filled-new-array {v0, v1}, [Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/CollectionBinding$Kind;->$VALUES:[Lbutterknife/internal/CollectionBinding$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbutterknife/internal/CollectionBinding$Kind;
    .locals 1

    .line 4
    const-class v0, Lbutterknife/internal/CollectionBinding$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbutterknife/internal/CollectionBinding$Kind;

    return-object p0
.end method

.method public static values()[Lbutterknife/internal/CollectionBinding$Kind;
    .locals 1

    .line 4
    sget-object v0, Lbutterknife/internal/CollectionBinding$Kind;->$VALUES:[Lbutterknife/internal/CollectionBinding$Kind;

    invoke-virtual {v0}, [Lbutterknife/internal/CollectionBinding$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbutterknife/internal/CollectionBinding$Kind;

    return-object v0
.end method
