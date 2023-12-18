.class public abstract enum Lbutterknife/ButterKnife$Finder;
.super Ljava/lang/Enum;
.source "ButterKnife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/ButterKnife;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Finder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbutterknife/ButterKnife$Finder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbutterknife/ButterKnife$Finder;

.field public static final enum ACTIVITY:Lbutterknife/ButterKnife$Finder;

.field public static final enum DIALOG:Lbutterknife/ButterKnife$Finder;

.field public static final enum VIEW:Lbutterknife/ButterKnife$Finder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 97
    new-instance v0, Lbutterknife/ButterKnife$Finder$1;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbutterknife/ButterKnife$Finder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/ButterKnife$Finder;->VIEW:Lbutterknife/ButterKnife$Finder;

    .line 106
    new-instance v1, Lbutterknife/ButterKnife$Finder$2;

    const-string v3, "ACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbutterknife/ButterKnife$Finder$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbutterknife/ButterKnife$Finder;->ACTIVITY:Lbutterknife/ButterKnife$Finder;

    .line 115
    new-instance v3, Lbutterknife/ButterKnife$Finder$3;

    const-string v5, "DIALOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbutterknife/ButterKnife$Finder$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbutterknife/ButterKnife$Finder;->DIALOG:Lbutterknife/ButterKnife$Finder;

    const/4 v5, 0x3

    new-array v5, v5, [Lbutterknife/ButterKnife$Finder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 95
    sput-object v5, Lbutterknife/ButterKnife$Finder;->$VALUES:[Lbutterknife/ButterKnife$Finder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILbutterknife/ButterKnife$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lbutterknife/ButterKnife$Finder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs arrayOf([Landroid/view/View;)[Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">([TT;)[TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static varargs listOf([Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lbutterknife/ImmutableViewList;

    invoke-direct {v0, p0}, Lbutterknife/ImmutableViewList;-><init>([Landroid/view/View;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbutterknife/ButterKnife$Finder;
    .locals 1

    .line 95
    const-class v0, Lbutterknife/ButterKnife$Finder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbutterknife/ButterKnife$Finder;

    return-object p0
.end method

.method public static values()[Lbutterknife/ButterKnife$Finder;
    .locals 1

    .line 95
    sget-object v0, Lbutterknife/ButterKnife$Finder;->$VALUES:[Lbutterknife/ButterKnife$Finder;

    invoke-virtual {v0}, [Lbutterknife/ButterKnife$Finder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbutterknife/ButterKnife$Finder;

    return-object v0
.end method


# virtual methods
.method public abstract findOptionalView(Ljava/lang/Object;I)Landroid/view/View;
.end method

.method public findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .line 134
    invoke-virtual {p0, p1, p2}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lbutterknife/ButterKnife$Finder;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required view \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was not found. If this view is optional add \'@Optional\' annotation."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getContext(Ljava/lang/Object;)Landroid/content/Context;
.end method
