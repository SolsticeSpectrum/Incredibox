/* 0.5.4 2021-04-23 21:06:13 */
var app = new function() {
    this.name = "Brazil", this.version = "5", this.date = "2016", this.folder = "asset-v5/", this.looptime = 8e3, this.bpm = 120, this.totalframe = 384, this.nbpolo = 7, this.nbloopbonus = 1, this.bonusloopA = !0, this.bonusendloopA = !1, this.recmaxloop = 23, this.recminloop = 3, this.recmintime = Math.round(this.looptime / 1e3) * this.recminloop, this.spritepolo = "polo-sprite.png", this.spritepicto = "game-picto.png", this.colBck = "#0a190f", this.col0 = "#6EB950", this.col1 = "#41A032", this.col2 = "#2D7D28", this.col3 = "#235023", this.col4 = "#14321E", this.animearray = [{
        name: "1_poum",
        color: "FAB405",
        uniqsnd: !0
    }, {
        name: "2_creuki",
        color: "FAB405",
        uniqsnd: !0
    }, {
        name: "3_shaka",
        color: "FAB405",
        uniqsnd: !0
    }, {
        name: "4_chouk",
        color: "FAB405",
        uniqsnd: !0
    }, {
        name: "5_kaliak",
        color: "FAB405",
        uniqsnd: !0
    }, {
        name: "6_tek",
        color: "23BEE1",
        uniqsnd: !0
    }, {
        name: "7_tuk",
        color: "23BEE1",
        uniqsnd: !0
    }, {
        name: "8_teung",
        color: "23BEE1",
        uniqsnd: !0
    }, {
        name: "9_ting",
        color: "23BEE1",
        uniqsnd: !0
    }, {
        name: "10_kougou",
        color: "23BEE1",
        uniqsnd: !0
    }, {
        name: "11_parimba",
        color: "64B92D",
        uniqsnd: !0
    }, {
        name: "12_coloko",
        color: "64B92D",
        uniqsnd: !0
    }, {
        name: "13_clav",
        color: "64B92D",
        uniqsnd: !0
    }, {
        name: "14_tromp",
        color: "64B92D",
        uniqsnd: !0
    }, {
        name: "15_trompolo",
        color: "64B92D",
        uniqsnd: !0
    }, {
        name: "16_bass",
        color: "E63C14",
        uniqsnd: !0
    }, {
        name: "17_wa",
        color: "E63C14",
        uniqsnd: !0
    }, {
        name: "18_ya",
        color: "E63C14",
        uniqsnd: !0
    }, {
        name: "19_palapa",
        color: "E63C14",
        uniqsnd: !0
    }, {
        name: "20_oh",
        color: "E63C14",
        uniqsnd: !0
    }], this.bonusarray = [{
        name: "Felicidade",
        src: "v5-b1-felicidade-hb.mp4",
        code: "1,3,6,10,16",
        sound: "bonus-felicidade",
        aspire: "aspire"
    }, {
        name: "Chegou",
        src: "v5-b2-chegou-hb.mp4",
        code: "1,4,9,13,17",
        sound: "bonus-chegou",
        aspire: "aspire"
    }, {
        name: "Musica",
        src: "v5-b3-musica-hb.mp4",
        code: "1,5,7,14,19",
        sound: "bonus-musica",
        aspire: "aspire"
    }], this.unlockerarray = [];
    for (var n = 0, o = this.animearray.length; n < o; n++) {
        var i = this.animearray[n].name;
        this.animearray[n].soundA = i + "_a", this.animearray[n].soundB = this.animearray[n].uniqsnd ? i + "_a" : i + "_b", this.animearray[n].anime = i + "-sprite.png", this.animearray[n].animeData = i + ".json"
    }
};