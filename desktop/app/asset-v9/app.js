/* 0.5.4 2021-04-23 21:06:13 */
var app = new function() {
    this.name = "Wekiddy", this.version = "9", this.date = "2023", this.folder = "asset-v9/", this.looptime = 5053, this.bpm = 190, this.totalframe = 242, this.nbpolo = 7, this.nbloopbonus = 2, this.bonusloopA = !0, this.bonusendloopA = !1, this.recmaxloop = 36, this.recminloop = 4, this.recmintime = Math.round(this.looptime / 1e3) * this.recminloop, this.spritepolo = "polo-sprite.png", this.spritepicto = "game-picto.png", this.colBck = "#00102b", this.col0 = "#008eff", this.col1 = "#005cfa", this.col2 = "#0048c3", this.col3 = "#00348c", this.col4 = "#002055", this.animearray = [{
        name: "01_boo_9",
        color: "9448ff",
        uniqsnd: !1
    }, {
        name: "02_kevin",
        color: "fa340f",
        uniqsnd: !1
    }, {
        name: "03_double_k",
        color: "19d428",
        uniqsnd: !1
    }, {
        name: "04_blue_gt",
        color: "008eff",
        uniqsnd: !0
    }, {
        name: "05_mj_182",
        color: "19d428",
        uniqsnd: !0
    }, {
        name: "06_boom_fuzz",
        color: "2c86fe",
        uniqsnd: !1
    }, {
        name: "07_asap_bee",
        color: "19d428",
        uniqsnd: !1
    }, {
        name: "08_m_o_g",
        color: "ffca06",
        uniqsnd: !1
    }, {
        name: "09_arashi",
        color: "008eff",
        uniqsnd: !1
    }, {
        name: "10_big_duke",
        color: "fa340f",
        uniqsnd: !1
    }, {
        name: "11_swingy",
        color: "2c86fe",
        uniqsnd: !1
    }, {
        name: "12_d_invaders",
        color: "19d428",
        uniqsnd: !1
    }, {
        name: "13_doo_doo",
        color: "008eff",
        uniqsnd: !0
    }, {
        name: "14_8_bit",
        color: "19d428",
        uniqsnd: !1
    }, {
        name: "15_kc_glow",
        color: "9448ff",
        uniqsnd: !1
    }, {
        name: "16_el_cool_p",
        color: "fa340f",
        uniqsnd: !1
    }, {
        name: "17_memphis",
        color: "2c86fe",
        uniqsnd: !1
    }, {
        name: "18_jogg_d",
        color: "ffca06",
        uniqsnd: !1
    }, {
        name: "19_scooter",
        color: "19d428",
        uniqsnd: !1
    }, {
        name: "20_lil_blaze",
        color: "2c86fe",
        uniqsnd: !1
    }], this.bonusarray = [{
        name: "Flow",
        src: "v9-b1-flow-hb.mp4",
        code: "1,2,5,8,17",
        sound: "21_bonus_flow",
        aspire: "aspire_flow"
    }, {
        name: "Urfo",
        src: "v9-b2-urfo-hb.mp4",
        code: "1,2,3,16,20",
        sound: "22_bonus_urfo",
        aspire: "aspire_urfo"
    }];
    for (var e = 0, n = this.animearray.length; e < n; e++) {
        var o = this.animearray[e].name;
        this.animearray[e].soundA = o + "_a", this.animearray[e].soundB = this.animearray[e].uniqsnd ? o + "_a" : o + "_b", this.animearray[e].anime = o + "-sprite.png", this.animearray[e].animeData = o + ".json"
    }
};