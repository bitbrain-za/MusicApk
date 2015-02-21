.class public Lcom/winca/music/Pages/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field mActivity:Lcom/winca/music/MusicActivity;

.field mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field private mPageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Enum;",
            "Lcom/winca/music/Pages/Page;",
            ">;"
        }
    .end annotation
.end field

.field mPrePageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "PageManager"

    iput-object v0, p0, Lcom/winca/music/Pages/PageManager;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    iput-object v0, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    .line 16
    sget-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    iput-object v0, p0, Lcom/winca/music/Pages/PageManager;->mPrePageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/winca/music/Pages/PageManager;->mActivity:Lcom/winca/music/MusicActivity;

    .line 22
    return-void
.end method

.method private checkView(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V
    .locals 2
    .parameter "viewID"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v1, p1}, Lcom/winca/music/Pages/PageFactory;->createView(Lcom/winca/music/MusicActivity;Lcom/winca/music/player/MusicPlayerDef$PageEnum;)Lcom/winca/music/Pages/Page;

    move-result-object v0

    .line 69
    .local v0, view:Lcom/winca/music/Pages/Page;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/winca/music/Pages/Page;->create()V

    .line 71
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v0           #view:Lcom/winca/music/Pages/Page;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetCurPageId()Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    return-object v0
.end method

.method public GetPrePage()Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/winca/music/Pages/PageManager;->mPrePageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    return-object v0
.end method

.method public JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V
    .locals 4
    .parameter "newViewID"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    sget-object v2, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    if-eq v1, v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PageManager;->checkView(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, page:Lcom/winca/music/Pages/Page;
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    sget-object v2, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    if-eq v1, v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #page:Lcom/winca/music/Pages/Page;
    check-cast v0, Lcom/winca/music/Pages/Page;

    .line 52
    .restart local v0       #page:Lcom/winca/music/Pages/Page;
    if-eqz v0, :cond_1

    .line 53
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/winca/music/Pages/Page;->setVisibility(I)V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    iput-object v1, p0, Lcom/winca/music/Pages/PageManager;->mPrePageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    .line 58
    iput-object p1, p0, Lcom/winca/music/Pages/PageManager;->mCurPageID:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    .line 60
    iget-object v1, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #page:Lcom/winca/music/Pages/Page;
    check-cast v0, Lcom/winca/music/Pages/Page;

    .line 61
    .restart local v0       #page:Lcom/winca/music/Pages/Page;
    invoke-virtual {v0}, Lcom/winca/music/Pages/Page;->onShow()V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winca/music/Pages/Page;->setVisibility(I)V

    .line 63
    const-string v1, "PageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jump To Page"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCuPage()Lcom/winca/music/Pages/Page;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/winca/music/Pages/PageManager;->GetCurPageId()Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/music/Pages/Page;

    return-object v0
.end method

.method public initial()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PageManager;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 26
    return-void
.end method

.method public onDestrory()V
    .locals 6

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, view:Lcom/winca/music/Pages/Page;
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->values()[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    move-result-object v1

    .line 110
    .local v1, pages:[Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 118
    return-void

    .line 111
    :cond_0
    const-string v3, "PageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Destroyr:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/winca/music/Pages/Page;
    check-cast v2, Lcom/winca/music/Pages/Page;

    .line 113
    .restart local v2       #view:Lcom/winca/music/Pages/Page;
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2}, Lcom/winca/music/Pages/Page;->OnDestrory()V

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onKeyBack()Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/winca/music/Pages/PageManager;->getCuPage()Lcom/winca/music/Pages/Page;

    move-result-object v0

    .line 79
    .local v0, page:Lcom/winca/music/Pages/Page;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/winca/music/Pages/Page;->onKeyBack()V

    .line 83
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, view:Lcom/winca/music/Pages/Page;
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->values()[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    move-result-object v1

    .line 91
    .local v1, pages:[Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 99
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    sget-object v3, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {p0, v3}, Lcom/winca/music/Pages/PageManager;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 103
    :cond_0
    return-void

    .line 92
    :cond_1
    const-string v3, "PageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Destroyr:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/winca/music/Pages/PageManager;->mPageList:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/winca/music/Pages/Page;
    check-cast v2, Lcom/winca/music/Pages/Page;

    .line 94
    .restart local v2       #view:Lcom/winca/music/Pages/Page;
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Lcom/winca/music/Pages/Page;->onResume()V

    .line 91
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
