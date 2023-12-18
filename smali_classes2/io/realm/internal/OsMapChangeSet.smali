.class public Lio/realm/internal/OsMapChangeSet;
.super Ljava/lang/Object;
.source "OsMapChangeSet.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field public static final EMPTY_CHANGESET:I

.field private static finalizerPtr:J


# instance fields
.field private final nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lio/realm/internal/OsMapChangeSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsMapChangeSet;->finalizerPtr:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    return-void
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetStringKeyDeletions(J)[Ljava/lang/String;
.end method

.method private static native nativeGetStringKeyInsertions(J)[Ljava/lang/String;
.end method

.method private static native nativeGetStringKeyModifications(J)[Ljava/lang/String;
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .line 42
    sget-wide v0, Lio/realm/internal/OsMapChangeSet;->finalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    return-wide v0
.end method

.method public getStringKeyDeletions()[Ljava/lang/String;
    .locals 2

    .line 50
    iget-wide v0, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMapChangeSet;->nativeGetStringKeyDeletions(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringKeyInsertions()[Ljava/lang/String;
    .locals 2

    .line 54
    iget-wide v0, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMapChangeSet;->nativeGetStringKeyInsertions(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringKeyModifications()[Ljava/lang/String;
    .locals 2

    .line 58
    iget-wide v0, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsMapChangeSet;->nativeGetStringKeyModifications(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 46
    iget-wide v0, p0, Lio/realm/internal/OsMapChangeSet;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
