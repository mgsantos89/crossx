.class abstract Lio/realm/RealmSet$SetStrategy;
.super Ljava/lang/Object;
.source "RealmSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Lio/realm/internal/ManageableObject;
.implements Lio/realm/RealmCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SetStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lio/realm/internal/ManageableObject;",
        "Lio/realm/RealmCollection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmSet$1;)V
    .locals 0

    .line 589
    invoke-direct {p0}, Lio/realm/RealmSet$SetStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation
.end method

.method abstract addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation
.end method

.method public abstract freeze()Lio/realm/RealmSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lio/realm/RealmSet$SetStrategy;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method abstract getOsSet()Lio/realm/internal/OsSet;
.end method

.method abstract getValueClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end method

.method abstract getValueClassName()Ljava/lang/String;
.end method

.method abstract hasListeners()Z
.end method

.method abstract removeAllChangeListeners()V
.end method

.method abstract removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation
.end method

.method abstract removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation
.end method
