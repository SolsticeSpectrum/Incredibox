/* 0.5.4 2021-04-23 21:06:13 */
var app = new function() {
    this.name = "Alive", this.version = "6", this.date = "2018", this.folder = "asset-v6/", this.looptime = 7111, this.bpm = 135, this.totalframe = 342, this.nbpolo = 7, this.nbloopbonus = 3, this.bonusloopA = !1, this.bonusendloopA = !1, this.recmaxloop = 26, this.recminloop = 3, this.recmintime = Math.round(this.looptime / 1e3) * this.recminloop, this.spritepolo = "polo-sprite.png", this.spritepicto = "game-picto.png", this.colBck = "#120521", this.col0 = "#a07dfa", this.col1 = "#825fd2", this.col2 = "#5f3ca0", this.col3 = "#371464", this.col4 = "#230a41", this.animearray = [{
        name: "1_kick",
        color: "1e96be",
        uniqsnd: !0
    }, {
        name: "2_snare",
        color: "1e96be",
        uniqsnd: !0
    }, {
        name: "3_kanye",
        color: "1e96be",
        uniqsnd: !0
    }, {
        name: "4_tuctuc",
        color: "1e96be",
        uniqsnd: !0
    }, {
        name: "5_break",
        color: "1e96be",
        uniqsnd: !0
    }, {
        name: "6_cribasse",
        color: "825fd2",
        uniqsnd: !0
    }, {
        name: "7_distotut",
        color: "825fd2",
        uniqsnd: !0
    }, {
        name: "8_screw",
        color: "825fd2",
        uniqsnd: !0
    }, {
        name: "9_shaolin",
        color: "825fd2",
        uniqsnd: !0
    }, {
        name: "10_shower",
        color: "825fd2",
        uniqsnd: !0
    }, {
        name: "11_basse",
        color: "e11419",
        uniqsnd: !0
    }, {
        name: "12_hou",
        color: "e11419",
        uniqsnd: !0
    }, {
        name: "13_clav",
        color: "e11419",
        uniqsnd: !0
    }, {
        name: "14_synth",
        color: "e11419",
        uniqsnd: !0
    }, {
        name: "15_yah",
        color: "e11419",
        uniqsnd: !0
    }, {
        name: "16_hurry",
        color: "f06400",
        uniqsnd: !0
    }, {
        name: "17_good",
        color: "f06400",
        uniqsnd: !0
    }, {
        name: "18_mind",
        color: "f06400",
        uniqsnd: !0
    }, {
        name: "19_haha",
        color: "f06400",
        uniqsnd: !0
    }, {
        name: "20_wow",
        color: "f06400",
        uniqsnd: !0
    }], this.bonusarray = [{
        name: "Alive",
        src: "v6-b1-alive-hb.mp4",
        code: "4,6,9,14,18",
        sound: "bonus-alive",
        aspire: "aspire-alive"
    }, {
        name: "Busta",
        src: "v6-b2-busta-hb.mp4",
        code: "1,2,8,11,16",
        sound: "bonus-busta",
        aspire: "aspire-busta"
    }, {
        name: "VR",
        src: "v6-b3-vr-hb.mp4",
        code: "3,8,12,11,20",
        sound: "bonus-vr",
        aspire: "aspire-vr"
    }], this.unlockerarray = [];
    for (var n = 0, o = this.animearray.length; n < o; n++) {
        var s = this.animearray[n].name;
        this.animearray[n].soundA = s + "_a", this.animearray[n].soundB = this.animearray[n].uniqsnd ? s + "_a" : s + "_b", this.animearray[n].anime = s + "-sprite.png", this.animearray[n].animeData = s + ".json"
    }
};