/* 0.5.4 2021-04-23 21:06:13 */
var app = new function() {
    this.name = "The Love", this.version = "4", this.date = "2014", this.folder = "asset-v4/", this.looptime = 8e3, this.bpm = 120, this.totalframe = 384, this.nbpolo = 7, this.nbloopbonus = 1, this.bonusloopA = !0, this.bonusendloopA = !1, this.recmaxloop = 23, this.recminloop = 3, this.recmintime = Math.round(this.looptime / 1e3) * this.recminloop, this.spritepolo = "polo-sprite.png", this.spritepicto = "game-picto.png", this.colBck = "#211101", this.col0 = "#D8A365", this.col1 = "#BA7B3D", this.col2 = "#A16224", this.col3 = "#6A3501", this.col4 = "#422101", this.animearray = [{
        name: "drum1_kick",
        color: "E5A90E",
        uniqsnd: !1
    }, {
        name: "drum2_snare",
        color: "E5A90E",
        uniqsnd: !1
    }, {
        name: "drum3_touti",
        color: "E5A90E",
        uniqsnd: !0
    }, {
        name: "drum4_charley",
        color: "E5A90E",
        uniqsnd: !0
    }, {
        name: "drum5_chatom",
        color: "E5A90E",
        uniqsnd: !1
    }, {
        name: "effect1_bass",
        color: "0CB6CB",
        uniqsnd: !1
    }, {
        name: "effect2_enigmatic",
        color: "0CB6CB",
        uniqsnd: !0
    }, {
        name: "effect3_cry",
        color: "0CB6CB",
        uniqsnd: !0
    }, {
        name: "effect4_odoyouno",
        color: "0CB6CB",
        uniqsnd: !0
    }, {
        name: "effect5_oua",
        color: "0CB6CB",
        uniqsnd: !0
    }, {
        name: "melo1_toun",
        color: "F42828",
        uniqsnd: !1
    }, {
        name: "melo2_flute",
        color: "F42828",
        uniqsnd: !1
    }, {
        name: "melo3_neou",
        color: "F42828",
        uniqsnd: !1
    }, {
        name: "melo4_hu",
        color: "F42828",
        uniqsnd: !0
    }, {
        name: "melo5_ah",
        color: "F42828",
        uniqsnd: !0
    }, {
        name: "chips1_feel",
        color: "787DFF",
        uniqsnd: !1
    }, {
        name: "chips2_chillin",
        color: "787DFF",
        uniqsnd: !0
    }, {
        name: "chips3_yeah",
        color: "787DFF",
        uniqsnd: !0
    }, {
        name: "chips4_filback",
        color: "787DFF",
        uniqsnd: !1
    }, {
        name: "chips5_teylo",
        color: "787DFF",
        uniqsnd: !0
    }], this.bonusarray = [{
        name: "Baby",
        src: "v4-b1-love-hb.mp4",
        code: "1,2,6,11,17",
        sound: "bonus-love",
        aspire: "aspire"
    }, {
        name: "Follow",
        src: "v4-b2-follow-hb.mp4",
        code: "1,6,8,12,18",
        sound: "bonus-follow",
        aspire: "aspire"
    }, {
        name: "Eagle",
        src: "v4-b3-eagle-hb.mp4",
        code: "1,3,6,13,16",
        sound: "bonus-eagle",
        aspire: "aspire"
    }];
    for (var o = 0, n = this.animearray.length; o < n; o++) {
        var e = this.animearray[o].name;
        this.animearray[o].soundA = e + "_a", this.animearray[o].soundB = this.animearray[o].uniqsnd ? e + "_a" : e + "_b", this.animearray[o].anime = e + "-sprite.png", this.animearray[o].animeData = e + ".json"
    }
};