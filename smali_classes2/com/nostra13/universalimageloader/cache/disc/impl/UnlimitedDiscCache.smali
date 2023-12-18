.class public Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;
.source "UnlimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    return-void
.end method
