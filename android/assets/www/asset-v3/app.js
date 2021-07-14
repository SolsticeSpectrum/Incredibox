/* 0.5.4 2021-04-23 21:06:13 */
var app = new function() {
    this.name = "Sunrise", this.version = "3", this.date = "2013", this.folder = "asset-v3/", this.looptime = 8e3, this.bpm = 120, this.totalframe = 384, this.nbpolo = 7, this.nbloopbonus = 4, this.bonusloopA = !0, this.bonusendloopA = !0, this.recmaxloop = 23, this.recminloop = 3, this.recmintime = Math.round(this.looptime / 1e3) * this.recminloop, this.spritepolo = "polo-sprite.png", this.spritepicto = "game-picto.png", this.colBck = "#001419", this.col0 = "#6E96A0", this.col1 = "#3C646E", this.col2 = "#28505A", this.col3 = "#143C46", this.col4 = "#002832", this.animearray = [{
        name: "drum1_ballet",
        color: "1EB482",
        uniqsnd: !0
    }, {
        name: "drum2_kick",
        color: "1EB482",
        uniqsnd: !0
    }, {
        name: "drum3_snare",
        color: "1EB482",
        uniqsnd: !0
    }, {
        name: "drum4_lead",
        color: "1EB482",
        uniqsnd: !0
    }, {
        name: "drum5_charley",
        color: "1EB482",
        uniqsnd: !0
    }, {
        name: "effet1_long",
        color: "50B4E6",
        uniqsnd: !1
    }, {
        name: "effet2_daft1",
        color: "50B4E6",
        uniqsnd: !0
    }, {
        name: "effet3_tududu",
        color: "50B4E6",
        uniqsnd: !0
    }, {
        name: "effet4_daft2",
        color: "50B4E6",
        uniqsnd: !0
    }, {
        name: "effet5_rythme",
        color: "50B4E6",
        uniqsnd: !1
    }, {
        name: "melo1_tuu",
        color: "FA5050",
        uniqsnd: !0
    }, {
        name: "melo2_indien",
        color: "FA5050",
        uniqsnd: !0
    }, {
        name: "melo3_armo",
        color: "FA5050",
        uniqsnd: !0
    }, {
        name: "melo4_clav",
        color: "FA5050",
        uniqsnd: !1
    }, {
        name: "melo5_siffle",
        color: "FA5050",
        uniqsnd: !0
    }, {
        name: "voix1_waya",
        color: "E6C832",
        uniqsnd: !0
    }, {
        name: "voix2_ride",
        color: "E6C832",
        uniqsnd: !1
    }, {
        name: "voix3_over",
        color: "E6C832",
        uniqsnd: !1
    }, {
        name: "voix4_colors",
        color: "E6C832",
        uniqsnd: !0
    }, {
        name: "voix5_sunrise",
        color: "E6C832",
        uniqsnd: !1
    }], this.bonusarray = [{
        name: "Lill Child",
        src: "v3-b1-child-hb.mp4",
        code: "2,4,9,14,16",
        sound: "bonus-child",
        aspire: "aspire"
    }, {
        name: "Dance",
        src: "v3-b2-dance-hb.mp4",
        code: "2,3,5,6,14",
        sound: "bonus-dance",
        aspire: "aspire"
    }, {
        name: "Sunrise",
        src: "v3-b3-sunrise-hb.mp4",
        code: "6,11,13,16,18",
        sound: "bonus-sunrise",
        aspire: "aspire"
    }];
    for (var n = 0, o = this.animearray.length; n < o; n++) {
        var i = this.animearray[n].name;
        this.animearray[n].soundA = i + "_a", this.animearray[n].soundB = this.animearray[n].uniqsnd ? i + "_a" : i + "_b", this.animearray[n].anime = i + "-sprite.png", this.animearray[n].animeData = i + ".json"
    }
};