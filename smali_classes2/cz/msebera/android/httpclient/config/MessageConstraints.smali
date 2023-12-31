.class public Lcz/msebera/android/httpclient/config/MessageConstraints;
.super Ljava/lang/Object;
.source "MessageConstraints.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;


# instance fields
.field private final maxHeaderCount:I

.field private final maxLineLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->build()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxLineLength:I

    .line 47
    iput p2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxHeaderCount:I

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    .locals 2

    const-string v0, "Message constraints"

    .line 81
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->setMaxHeaderCount(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result p0

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;->setMaxLineLength(I)Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;
    .locals 1

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints$Builder;-><init>()V

    return-object v0
.end method

.method public static lineLen(I)Lcz/msebera/android/httpclient/config/MessageConstraints;
    .locals 2

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/config/MessageConstraints;

    const-string v1, "Max line length"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcz/msebera/android/httpclient/config/MessageConstraints;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcz/msebera/android/httpclient/config/MessageConstraints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->clone()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 51
    iget v0, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxLineLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[maxLineLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxLineLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxHeaderCount="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/MessageConstraints;->maxHeaderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
