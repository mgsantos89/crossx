.class synthetic Lbutterknife/internal/ViewInjector$1;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/ViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$butterknife$internal$CollectionBinding$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    invoke-static {}, Lbutterknife/internal/CollectionBinding$Kind;->values()[Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbutterknife/internal/ViewInjector$1;->$SwitchMap$butterknife$internal$CollectionBinding$Kind:[I

    :try_start_0
    sget-object v1, Lbutterknife/internal/CollectionBinding$Kind;->ARRAY:Lbutterknife/internal/CollectionBinding$Kind;

    invoke-virtual {v1}, Lbutterknife/internal/CollectionBinding$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbutterknife/internal/ViewInjector$1;->$SwitchMap$butterknife$internal$CollectionBinding$Kind:[I

    sget-object v1, Lbutterknife/internal/CollectionBinding$Kind;->LIST:Lbutterknife/internal/CollectionBinding$Kind;

    invoke-virtual {v1}, Lbutterknife/internal/CollectionBinding$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
