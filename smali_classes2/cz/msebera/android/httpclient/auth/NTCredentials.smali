.class public Lcz/msebera/android/httpclient/auth/NTCredentials;
.super Ljava/lang/Object;
.source "NTCredentials.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/Credentials;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x667f466566109701L


# instance fields
.field private final password:Ljava/lang/String;

.field private final principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

.field private final workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Username:password string"

    .line 65
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 69
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->password:Ljava/lang/String;

    move-object p1, v3

    goto :goto_0

    .line 73
    :cond_0
    iput-object v2, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->password:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x2f

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 77
    new-instance v3, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    .line 78
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    goto :goto_1

    .line 81
    :cond_1
    new-instance v1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    add-int/lit8 v0, v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    .line 85
    :goto_1
    iput-object v2, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "User name"

    .line 103
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-direct {v0, p4, p1}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    .line 105
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->password:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 107
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 156
    :cond_0
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;

    if-eqz v1, :cond_1

    .line 157
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTCredentials;

    .line 158
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    .line 159
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    .line 146
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[principal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->principal:Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][workstation: "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTCredentials;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
