/* 0.5.4 2021-04-23 21:06:13 */
"use strict";
var machine = {},
    user = {},
    target = "desktop",
    exclude = !1,
    showlog = !1,
    sndtype = "ogg",
    vidtype = "mp4",
    osname = "win",
    domainOnline = "https://www.incredibox.com/",
    appCN = !1,
    appSQ = !1,
    store = "",
    appTotalVersion = appCN && "windows" == osname ? 4 : 8,
    build = {
        ios: {
            id: "1093131935",
            url: "https://itunes.apple.com/app/id1093131935",
            urlRate: "itms-apps://itunes.apple.com/app/id1093131935",
            version: "0.5.4"
        },
        "ios-cn": {
            id: "1547418803",
            url: "https://itunes.apple.com/app/id1547418803",
            urlRate: "itms-apps://itunes.apple.com/app/id1547418803",
            version: "0.5.4"
        },
        and: {
            id: "",
            url: "https://play.google.com/store/apps/details?id=com.sofarsogood.incredibox",
            version: "054"
        },
        "and-cn": {
            id: "",
            url: "https://apps.appinchina.com.cn/details/com.sofarsogood.incredibox.cn",
            version: "054"
        },
        ama: {
            id: "",
            url: "https://www.amazon.fr/So-Far-Good-Incredibox/dp/B07BKZCDHT/",
            version: "054"
        },
        osx: {
            id: "1437906083",
            url: "https://itunes.apple.com/app/id1437906083",
            urlRate: "macappstore://itunes.apple.com/app/id1437906083?action=write-review",
            version: "0.5.4"
        },
        win: {
            id: "9PDJPP8SCS9K",
            url: "https://www.microsoft.com/store/apps/9PDJPP8SCS9K",
            version: "0.5.4"
        },
        default: {
            id: "",
            url: domainOnline,
            version: "9.9.9"
        },
        getInfo: function() {
            return appBrowser ? this.default : isWin ? this.win : isOSX ? this.osx : appCN && isAndroid ? this["and-cn"] : appCN && isIOS ? this["ios-cn"] : isIOS ? this.ios : isAndroid ? this.and : this.default
        }
    };

function initGlobal() {
    try {
        withAdBreak
    } catch (e) {
        window.withAdBreak = !1
    }
    try {
        adVisible
    } catch (e) {
        window.adVisible = !1
    }
}
var debugMute = notnull(getParameterByName("mute")),
    debugGame = notnull(getParameterByName("game")),
    debugScene = notnull(getParameterByName("scene"));

function nada() {}
var preventActionUsed = !1,
    preventActionDelay = .25;

function preventAction(e) {
    preventActionUsed || (preventActionUsed = !0, e(), setTimeout(function() {
        preventActionUsed = !1
    }, preventActionDelay))
}

function tryfunc(e) {
    notnull(e) && "function" === (typeof e).toLowerCase() && e()
}

function inIframe() {
    try {
        return window.self !== window.top
    } catch (e) {
        return !0
    }
}

function callParentWindow(e, t) {
    isIframe && (notnull(window.top) && notnull(window.top.appEvent) ? window.top.appEvent(e, t) : setTimeout(function() {
        callParentWindow(e, t)
    }, 200))
}
var regexList = {
    allchar: /[*]/,
    classic: /[^A-Za-z0-9\u00C0-\u017F '-]/,
    max3letters: /[*]|(.)(?=\1\1\1)/gi,
    strict: /[^A-Za-z0-9 '-]/,
    custom: /[^A-Za-z0-9àâçèéêîôùûÀÂÇÈÉÊÎÔÙÛ '-]/,
    email: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
    allsafe: /[^A-Za-z0-9\xAA\xB5\xBA\xC0-\xD6\xD8-\xF6\xF8-\u02C1\u02C6-\u02D1\u02E0-\u02E4\u02EC\u02EE\u0370-\u0374\u0376\u0377\u037A-\u037D\u037F\u0386\u0388-\u038A\u038C\u038E-\u03A1\u03A3-\u03F5\u03F7-\u0481\u048A-\u052F\u0531-\u0556\u0559\u0561-\u0587\u05D0-\u05EA\u05F0-\u05F2\u0620-\u064A\u066E\u066F\u0671-\u06D3\u06D5\u06E5\u06E6\u06EE\u06EF\u06FA-\u06FC\u06FF\u0710\u0712-\u072F\u074D-\u07A5\u07B1\u07CA-\u07EA\u07F4\u07F5\u07FA\u0800-\u0815\u081A\u0824\u0828\u0840-\u0858\u0860-\u086A\u08A0-\u08B4\u08B6-\u08BD\u0904-\u0939\u093D\u0950\u0958-\u0961\u0971-\u0980\u0985-\u098C\u098F\u0990\u0993-\u09A8\u09AA-\u09B0\u09B2\u09B6-\u09B9\u09BD\u09CE\u09DC\u09DD\u09DF-\u09E1\u09F0\u09F1\u09FC\u0A05-\u0A0A\u0A0F\u0A10\u0A13-\u0A28\u0A2A-\u0A30\u0A32\u0A33\u0A35\u0A36\u0A38\u0A39\u0A59-\u0A5C\u0A5E\u0A72-\u0A74\u0A85-\u0A8D\u0A8F-\u0A91\u0A93-\u0AA8\u0AAA-\u0AB0\u0AB2\u0AB3\u0AB5-\u0AB9\u0ABD\u0AD0\u0AE0\u0AE1\u0AF9\u0B05-\u0B0C\u0B0F\u0B10\u0B13-\u0B28\u0B2A-\u0B30\u0B32\u0B33\u0B35-\u0B39\u0B3D\u0B5C\u0B5D\u0B5F-\u0B61\u0B71\u0B83\u0B85-\u0B8A\u0B8E-\u0B90\u0B92-\u0B95\u0B99\u0B9A\u0B9C\u0B9E\u0B9F\u0BA3\u0BA4\u0BA8-\u0BAA\u0BAE-\u0BB9\u0BD0\u0C05-\u0C0C\u0C0E-\u0C10\u0C12-\u0C28\u0C2A-\u0C39\u0C3D\u0C58-\u0C5A\u0C60\u0C61\u0C80\u0C85-\u0C8C\u0C8E-\u0C90\u0C92-\u0CA8\u0CAA-\u0CB3\u0CB5-\u0CB9\u0CBD\u0CDE\u0CE0\u0CE1\u0CF1\u0CF2\u0D05-\u0D0C\u0D0E-\u0D10\u0D12-\u0D3A\u0D3D\u0D4E\u0D54-\u0D56\u0D5F-\u0D61\u0D7A-\u0D7F\u0D85-\u0D96\u0D9A-\u0DB1\u0DB3-\u0DBB\u0DBD\u0DC0-\u0DC6\u0E01-\u0E30\u0E32\u0E33\u0E40-\u0E46\u0E81\u0E82\u0E84\u0E87\u0E88\u0E8A\u0E8D\u0E94-\u0E97\u0E99-\u0E9F\u0EA1-\u0EA3\u0EA5\u0EA7\u0EAA\u0EAB\u0EAD-\u0EB0\u0EB2\u0EB3\u0EBD\u0EC0-\u0EC4\u0EC6\u0EDC-\u0EDF\u0F00\u0F40-\u0F47\u0F49-\u0F6C\u0F88-\u0F8C\u1000-\u102A\u103F\u1050-\u1055\u105A-\u105D\u1061\u1065\u1066\u106E-\u1070\u1075-\u1081\u108E\u10A0-\u10C5\u10C7\u10CD\u10D0-\u10FA\u10FC-\u1248\u124A-\u124D\u1250-\u1256\u1258\u125A-\u125D\u1260-\u1288\u128A-\u128D\u1290-\u12B0\u12B2-\u12B5\u12B8-\u12BE\u12C0\u12C2-\u12C5\u12C8-\u12D6\u12D8-\u1310\u1312-\u1315\u1318-\u135A\u1380-\u138F\u13A0-\u13F5\u13F8-\u13FD\u1401-\u166C\u166F-\u167F\u1681-\u169A\u16A0-\u16EA\u16F1-\u16F8\u1700-\u170C\u170E-\u1711\u1720-\u1731\u1740-\u1751\u1760-\u176C\u176E-\u1770\u1780-\u17B3\u17D7\u17DC\u1820-\u1877\u1880-\u1884\u1887-\u18A8\u18AA\u18B0-\u18F5\u1900-\u191E\u1950-\u196D\u1970-\u1974\u1980-\u19AB\u19B0-\u19C9\u1A00-\u1A16\u1A20-\u1A54\u1AA7\u1B05-\u1B33\u1B45-\u1B4B\u1B83-\u1BA0\u1BAE\u1BAF\u1BBA-\u1BE5\u1C00-\u1C23\u1C4D-\u1C4F\u1C5A-\u1C7D\u1C80-\u1C88\u1CE9-\u1CEC\u1CEE-\u1CF1\u1CF5\u1CF6\u1D00-\u1DBF\u1E00-\u1F15\u1F18-\u1F1D\u1F20-\u1F45\u1F48-\u1F4D\u1F50-\u1F57\u1F59\u1F5B\u1F5D\u1F5F-\u1F7D\u1F80-\u1FB4\u1FB6-\u1FBC\u1FBE\u1FC2-\u1FC4\u1FC6-\u1FCC\u1FD0-\u1FD3\u1FD6-\u1FDB\u1FE0-\u1FEC\u1FF2-\u1FF4\u1FF6-\u1FFC\u2071\u207F\u2090-\u209C\u2102\u2107\u210A-\u2113\u2115\u2119-\u211D\u2124\u2126\u2128\u212A-\u212D\u212F-\u2139\u213C-\u213F\u2145-\u2149\u214E\u2183\u2184\u2C00-\u2C2E\u2C30-\u2C5E\u2C60-\u2CE4\u2CEB-\u2CEE\u2CF2\u2CF3\u2D00-\u2D25\u2D27\u2D2D\u2D30-\u2D67\u2D6F\u2D80-\u2D96\u2DA0-\u2DA6\u2DA8-\u2DAE\u2DB0-\u2DB6\u2DB8-\u2DBE\u2DC0-\u2DC6\u2DC8-\u2DCE\u2DD0-\u2DD6\u2DD8-\u2DDE\u2E2F\u3005\u3006\u3031-\u3035\u303B\u303C\u3041-\u3096\u309D-\u309F\u30A1-\u30FA\u30FC-\u30FF\u3105-\u312E\u3131-\u318E\u31A0-\u31BA\u31F0-\u31FF\u3400-\u4DB5\u4E00-\u9FEA\uA000-\uA48C\uA4D0-\uA4FD\uA500-\uA60C\uA610-\uA61F\uA62A\uA62B\uA640-\uA66E\uA67F-\uA69D\uA6A0-\uA6E5\uA717-\uA71F\uA722-\uA788\uA78B-\uA7AE\uA7B0-\uA7B7\uA7F7-\uA801\uA803-\uA805\uA807-\uA80A\uA80C-\uA822\uA840-\uA873\uA882-\uA8B3\uA8F2-\uA8F7\uA8FB\uA8FD\uA90A-\uA925\uA930-\uA946\uA960-\uA97C\uA984-\uA9B2\uA9CF\uA9E0-\uA9E4\uA9E6-\uA9EF\uA9FA-\uA9FE\uAA00-\uAA28\uAA40-\uAA42\uAA44-\uAA4B\uAA60-\uAA76\uAA7A\uAA7E-\uAAAF\uAAB1\uAAB5\uAAB6\uAAB9-\uAABD\uAAC0\uAAC2\uAADB-\uAADD\uAAE0-\uAAEA\uAAF2-\uAAF4\uAB01-\uAB06\uAB09-\uAB0E\uAB11-\uAB16\uAB20-\uAB26\uAB28-\uAB2E\uAB30-\uAB5A\uAB5C-\uAB65\uAB70-\uABE2\uAC00-\uD7A3\uD7B0-\uD7C6\uD7CB-\uD7FB\uF900-\uFA6D\uFA70-\uFAD9\uFB00-\uFB06\uFB13-\uFB17\uFB1D\uFB1F-\uFB28\uFB2A-\uFB36\uFB38-\uFB3C\uFB3E\uFB40\uFB41\uFB43\uFB44\uFB46-\uFBB1\uFBD3-\uFD3D\uFD50-\uFD8F\uFD92-\uFDC7\uFDF0-\uFDFB\uFE70-\uFE74\uFE76-\uFEFC\uFF21-\uFF3A\uFF41-\uFF5A\uFF66-\uFFBE\uFFC2-\uFFC7\uFFCA-\uFFCF\uFFD2-\uFFD7\uFFDA-\uFFDC\s]|\uD800[\uDC00-\uDC0B\uDC0D-\uDC26\uDC28-\uDC3A\uDC3C\uDC3D\uDC3F-\uDC4D\uDC50-\uDC5D\uDC80-\uDCFA\uDE80-\uDE9C\uDEA0-\uDED0\uDF00-\uDF1F\uDF2D-\uDF40\uDF42-\uDF49\uDF50-\uDF75\uDF80-\uDF9D\uDFA0-\uDFC3\uDFC8-\uDFCF]|\uD801[\uDC00-\uDC9D\uDCB0-\uDCD3\uDCD8-\uDCFB\uDD00-\uDD27\uDD30-\uDD63\uDE00-\uDF36\uDF40-\uDF55\uDF60-\uDF67]|\uD802[\uDC00-\uDC05\uDC08\uDC0A-\uDC35\uDC37\uDC38\uDC3C\uDC3F-\uDC55\uDC60-\uDC76\uDC80-\uDC9E\uDCE0-\uDCF2\uDCF4\uDCF5\uDD00-\uDD15\uDD20-\uDD39\uDD80-\uDDB7\uDDBE\uDDBF\uDE00\uDE10-\uDE13\uDE15-\uDE17\uDE19-\uDE33\uDE60-\uDE7C\uDE80-\uDE9C\uDEC0-\uDEC7\uDEC9-\uDEE4\uDF00-\uDF35\uDF40-\uDF55\uDF60-\uDF72\uDF80-\uDF91]|\uD803[\uDC00-\uDC48\uDC80-\uDCB2\uDCC0-\uDCF2]|\uD804[\uDC03-\uDC37\uDC83-\uDCAF\uDCD0-\uDCE8\uDD03-\uDD26\uDD50-\uDD72\uDD76\uDD83-\uDDB2\uDDC1-\uDDC4\uDDDA\uDDDC\uDE00-\uDE11\uDE13-\uDE2B\uDE80-\uDE86\uDE88\uDE8A-\uDE8D\uDE8F-\uDE9D\uDE9F-\uDEA8\uDEB0-\uDEDE\uDF05-\uDF0C\uDF0F\uDF10\uDF13-\uDF28\uDF2A-\uDF30\uDF32\uDF33\uDF35-\uDF39\uDF3D\uDF50\uDF5D-\uDF61]|\uD805[\uDC00-\uDC34\uDC47-\uDC4A\uDC80-\uDCAF\uDCC4\uDCC5\uDCC7\uDD80-\uDDAE\uDDD8-\uDDDB\uDE00-\uDE2F\uDE44\uDE80-\uDEAA\uDF00-\uDF19]|\uD806[\uDCA0-\uDCDF\uDCFF\uDE00\uDE0B-\uDE32\uDE3A\uDE50\uDE5C-\uDE83\uDE86-\uDE89\uDEC0-\uDEF8]|\uD807[\uDC00-\uDC08\uDC0A-\uDC2E\uDC40\uDC72-\uDC8F\uDD00-\uDD06\uDD08\uDD09\uDD0B-\uDD30\uDD46]|\uD808[\uDC00-\uDF99]|\uD809[\uDC80-\uDD43]|[\uD80C\uD81C-\uD820\uD840-\uD868\uD86A-\uD86C\uD86F-\uD872\uD874-\uD879][\uDC00-\uDFFF]|\uD80D[\uDC00-\uDC2E]|\uD811[\uDC00-\uDE46]|\uD81A[\uDC00-\uDE38\uDE40-\uDE5E\uDED0-\uDEED\uDF00-\uDF2F\uDF40-\uDF43\uDF63-\uDF77\uDF7D-\uDF8F]|\uD81B[\uDF00-\uDF44\uDF50\uDF93-\uDF9F\uDFE0\uDFE1]|\uD821[\uDC00-\uDFEC]|\uD822[\uDC00-\uDEF2]|\uD82C[\uDC00-\uDD1E\uDD70-\uDEFB]|\uD82F[\uDC00-\uDC6A\uDC70-\uDC7C\uDC80-\uDC88\uDC90-\uDC99]|\uD835[\uDC00-\uDC54\uDC56-\uDC9C\uDC9E\uDC9F\uDCA2\uDCA5\uDCA6\uDCA9-\uDCAC\uDCAE-\uDCB9\uDCBB\uDCBD-\uDCC3\uDCC5-\uDD05\uDD07-\uDD0A\uDD0D-\uDD14\uDD16-\uDD1C\uDD1E-\uDD39\uDD3B-\uDD3E\uDD40-\uDD44\uDD46\uDD4A-\uDD50\uDD52-\uDEA5\uDEA8-\uDEC0\uDEC2-\uDEDA\uDEDC-\uDEFA\uDEFC-\uDF14\uDF16-\uDF34\uDF36-\uDF4E\uDF50-\uDF6E\uDF70-\uDF88\uDF8A-\uDFA8\uDFAA-\uDFC2\uDFC4-\uDFCB]|\uD83A[\uDC00-\uDCC4\uDD00-\uDD43]|\uD83B[\uDE00-\uDE03\uDE05-\uDE1F\uDE21\uDE22\uDE24\uDE27\uDE29-\uDE32\uDE34-\uDE37\uDE39\uDE3B\uDE42\uDE47\uDE49\uDE4B\uDE4D-\uDE4F\uDE51\uDE52\uDE54\uDE57\uDE59\uDE5B\uDE5D\uDE5F\uDE61\uDE62\uDE64\uDE67-\uDE6A\uDE6C-\uDE72\uDE74-\uDE77\uDE79-\uDE7C\uDE7E\uDE80-\uDE89\uDE8B-\uDE9B\uDEA1-\uDEA3\uDEA5-\uDEA9\uDEAB-\uDEBB]|\uD869[\uDC00-\uDED6\uDF00-\uDFFF]|\uD86D[\uDC00-\uDF34\uDF40-\uDFFF]|\uD86E[\uDC00-\uDC1D\uDC20-\uDFFF]|\uD873[\uDC00-\uDEA1\uDEB0-\uDFFF]|\uD87A[\uDC00-\uDFE0]|\uD87E[\uDC00-\uDE1D]/
};

function isEmpty(e) {
    return 0 === Object.keys(e).length && e.constructor === Object
}

function countObj(e) {
    var t, o = 0;
    for (t in e) e.hasOwnProperty(t) && o++;
    return o
}

function removeDupInArray(e, t) {
    var o = [];
    for (var i of e) existInArray(o, i, t) || o.push(i);
    return o
}

function uniqueBetweenArray(e, t, o) {
    var i, n = [];
    for (i of e) existInArray(t, i, o) || n.push(i);
    for (i of t) existInArray(e, i, o) || n.push(i);
    return n
}

function existInArray(e, t, o) {
    for (var i = !notnull(o) || o, n = !1, s = 0, a = e.length; s < a; s++)
        if (i) {
            if (e[s] === t) {
                n = !0;
                break
            }
        } else if (e[s].toLowerCase() === t.toLowerCase()) {
        n = !0;
        break
    }
    return n
}

function removeInArray(e, t) {
    for (var o = 0, i = t.length; o < i; o++)
        if (t[o] === e) {
            t.splice(o, 1);
            break
        } return t
}

function removeInArrayFromProp(e, t, o) {
    for (var i = 0, n = o.length; i < n; i++)
        if (o[i][t] === e) {
            o.splice(i, 1);
            break
        } return o
}

function existInArrayFromProp(e, t, o) {
    for (var i = 0, n = o.length; i < n; i++)
        if (o[i][t] === e) return !0;
    return !1
}

function numberArray(e) {
    for (var t = 0, o = e.length; t < o; t++) e[t] = 0 | e[t];
    return e
}

function windowPopup(e, t, o, i) {
    var n = i ? screen.height / 2 - o / 2 : 0,
        s = i ? screen.width / 2 - t / 2 : 0;
    window.open(e, "", "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=" + t + ",height=" + o + ",top=" + n + ",left=" + s)
}

function xhr(e, t, o, i, n) {
    var s = n || function() {};
    $.ajax({
        type: e,
        url: t,
        crossdomain: !0,
        data: o,
        success: function(e) {
            i(e, o)
        },
        error: s,
        dataType: "json"
    })
}

function assetName(e) {
    var t = "";
    switch (assetSize) {
        case "hd":
            t = nameToHD(e);
            break;
        case "mini":
            t = nameToMini(e);
            break;
        default:
            t = e
    }
    return t
}

function animeName(e) {
    var t = "";
    switch (animeSize) {
        case "hd":
            t = nameToHD(e);
            break;
        case "mini":
            t = nameToMini(e);
            break;
        default:
            t = e
    }
    return t
}

function nameToMini(e) {
    var t = e.substr(e.lastIndexOf("."));
    return e.split(t).join("-mini" + t)
}

function nameToHD(e) {
    var t = e.substr(e.lastIndexOf("."));
    return e.split(t).join("-hd" + t)
}

function loadImg(e, t) {
    var o = "object" != typeof e[0] ? [e] : e,
        i = o.length,
        n = 0;

    function s() {
        var e = o[n][0],
            t = o[n][1],
            i = new Image;
        i.onload = function() {
            $(t).css({
                "background-image": "url(" + e + ")"
            }), a()
        }, i.onerror = function() {
            var t = e.split("/"),
                o = t[t.length - 1];
            boxDialog.open("Preloading IMG " + o, "ERROR", ["Relaod", "Continue"], [gotoAppUrl, a], !0)
        }, i.src = e
    }

    function a() {
        (++n == i ? t : s)()
    }
    s()
}

function loadSnd(e, t, o, i) {
    var n = new XMLHttpRequest;
    n.open("GET", e, !0), n.responseType = "arraybuffer", n.onload = function() {
        t.decodeAudioData(n.response, function(e) {
            o(e)
        }, function(e) {
            i()
        })
    }, n.onerror = function() {
        i()
    }, n.send()
}

function gotoAppUrl(e) {
    var t = isnull(e) ? appBrowser ? "" : "index.html" : e;
    window.location.href = t
}

function openURL(e, t) {
    var o = isIframe ? window.top : window;
    appDesktop ? _electron.shell.openExternal(e) : (t = isnull(t) ? "_blank" : t, t = appMobile ? "_system" : t, trustAppMobile && isIOS ? cordova.InAppBrowser.open(e, "_system", "hidden=yes,location=no") : o.open(e, t))
}

function redirectTo(e) {
    var t = domainOnline + "url/" + e;
    if (t = appCN ? t + "-cn" : t, appMobile) switch (e) {
        case "facebook":
            t = isIOS ? "fb://page?id=182619895103489" : "fb://page/182619895103489";
            break;
        case "twitter":
            t = "https://twitter.com/incredibox_";
            break;
        case "instagram":
            t = "https://www.instagram.com/incredibox.official/";
            break;
        case "youtube":
            t = "https://www.youtube.com/c/incredibox"
    }
    saveGA("redirection", "open_url", t), openURL(t)
}

function getParameterByName(e) {
    var t = {},
        o = (window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(e, o, i) {
            t[o] = i
        }), null);
    return e in t && (o = t[e]), o
}

function getParameter() {
    return window.location.search
}

function getPageName() {
    return window.location.href.split("/").pop()
}

function getPageNameGA() {
    return -1 != window.location.href.indexOf("app.html") ? "app.html?v=" + getParameterByName("v") : "index.html"
}

function secToText(e) {
    parseInt(e % 1e3 / 100);
    var t = parseInt(e / 1e3 % 60),
        o = parseInt(e / 6e4 % 60),
        i = parseInt(e / 36e5 % 24);
    return i = i < 10 ? "0" + i : i, (o = o < 10 ? "0" + o : o) + ":" + (t = t < 10 ? "0" + t : t)
}

function getTime() {
    return (new Date).getTime()
}

function getTimeAgo(e, t) {
    e = -1 == e.indexOf("/") ? e.split("-").join("/") : e, t = -1 == t.indexOf("/") ? t.split("-").join("/") : t;
    var o = new Date(e),
        i = timeConversion(new Date(t).getTime() - o.getTime());
    return !1 === i ? getStringDate(e) : i
}

function timeConversion(e) {
    var t = (e / 1e3).toFixed(1),
        o = (e / 6e4).toFixed(1),
        i = (e / 36e5).toFixed(1),
        n = (e / 864e5).toFixed(1),
        s = "";
    if (t < 60) {
        var a = Math.round(t);
        s = a.toString() + " " + (a < 2 && notnull(STR("txt.time.tSec.one")) ? STR("txt.time.tSec.one") : STR("txt.time.tSec.other"))
    } else if (o < 60) {
        var u = Math.round(o);
        s = u.toString() + " " + (u < 2 && notnull(STR("txt.time.tMin.one")) ? STR("txt.time.tMin.one") : STR("txt.time.tMin.other"))
    } else if (i < 23) {
        var r = Math.round(i);
        s = r.toString() + " " + (r < 2 && notnull(STR("txt.time.tHou.one")) ? STR("txt.time.tHou.one") : STR("txt.time.tHou.other"))
    } else {
        if (!(n < 10)) return !1;
        var c = Math.round(n);
        s = c.toString() + " " + (c < 2 && notnull(STR("txt.time.tDay.one")) ? STR("txt.time.tDay.one") : STR("txt.time.tDay.other"))
    }
    return STR("txt.ago").split("%{date_time}").join(s)
}

function getDateNow() {
    var e = new Date,
        t = e.getDate(),
        o = e.getMonth() + 1,
        i = e.getFullYear(),
        n = e.getHours(),
        s = e.getMinutes(),
        a = e.getSeconds();
    return t = t < 10 ? String("0" + t) : String(t), o = o < 10 ? String("0" + o) : String(o), n = n < 10 ? n = String("0" + n) : String(n), s = s < 10 ? s = String("0" + s) : String(s), a = a < 10 ? a = String("0" + a) : String(a), String(i + "-" + o + "-" + t + " " + n + ":" + s + ":" + a)
}

function jsonDecode(e) {
    if (isnull(e)) return null;
    var t = e.split("\t").join("").split("\n").join("");
    return JSON.parse(t)
}

function jsonEncode(e) {
    return isnull(e) ? null : JSON.stringify(e)
}

function random(e) {
    return Math.round(Math.random() * e)
}

function decimal(e, t) {
    t = isnull(t) ? 2 : t;
    var o = Math.pow(10, t);
    return Math.round(e * o) / o
}

function numberSpaced(e) {
    var t = e.toString(),
        o = t.indexOf(".");
    return t.replace(/\d(?=(?:\d{3})+(?:\.|$))/g, function(e, t) {
        return o < 0 || t < o ? e + " " : e
    })
}

function trim(e) {
    return isnull(e) ? "" : e = (e = (e = (e = e.split("\t").join("")).split("\n").join("")).split("\r").join("")).replace(/^\s+|\s+$|\s+(?=\s)/g, "")
}

function cleanInputText(e, t) {
    return e = (e = trim(e = ucwords(e))).replace(regexList.max3letters, ""), t.val(e), e
}

function slugify(e) {
    new RegExp("àáäâãåèéëêìíïîòóöôùúüûñçßÿœæŕśńṕẃǵǹḿǘẍźḧ·/_,:;".split("").join("|"), "g");
    return e.toString().toLowerCase().replace(/\s+/g, "-").replace(/&/g, "-and-").replace(/[^\w\-]+/g, "").replace(/\-\-+/g, "-").replace(/^-+/, "")
}

function addMiddleBreak(e) {
    var t = e.split(" "),
        o = t.length - 1,
        i = Math.ceil(o / 2);
    return t[i] = t[i] + "<br>", t.join(" ")
}

function ucwords(e) {
    return (e = e.toLowerCase()).charAt(0).toUpperCase() + e.slice(1)
}

function uniqnum() {
    return Math.floor((new Date).valueOf() * Math.random())
}

function uniqid(e) {
    var t = e || "";

    function o() {
        return Math.floor(65536 * (1 + Math.random())).toString(16).substring(1)
    }
    return o() + t + o() + t + o() + t + o() + t + o()
}

function getUniqLink(e) {
    var t = notnull(e) ? e.app : app.version;
    return uniqid() + "-v" + t
}

function isnull(e) {
    return null === e || void 0 === e || "undefined" === e
}

function notnull(e) {
    return null !== e && void 0 !== e && "undefined" !== e
}

function isFunction(e) {
    return e && "[object Function]" === {}.toString.call(e)
}

function copyToClipboard(e) {
    var t = document.createElement("textarea");
    t.value = e, t.setAttribute("readonly", ""), t.style = {
        position: "absolute",
        visibility: "hidden",
        pointerEvents: "none"
    }, document.body.appendChild(t), t.select(), document.execCommand("copy"), document.body.removeChild(t)
}

function resetAnimationCSS(e) {
    e.style.animation = "none", e.offsetHeight, e.style.animation = null
}

function transitionEndEventName() {
    var e, t = document.createElement("div"),
        o = {
            transition: "transitionend",
            OTransition: "oTransitionEnd",
            MozTransition: "transitionend",
            WebkitTransition: "webkitTransitionEnd"
        };
    for (e in o)
        if (o.hasOwnProperty(e) && void 0 !== t.style[e]) return o[e];
    return null
}

function animationEndEventName() {
    var e, t = document.createElement("div"),
        o = {
            animation: "animationend",
            OAnimation: "oanimationend",
            MozAnimation: "animationend",
            WebkitAnimation: "webkitAnimationEnd"
        };
    for (e in o)
        if (o.hasOwnProperty(e) && void 0 !== t.style[e]) return o[e];
    return null
}

function listenTransition(e, t, o, i) {
    i = !!notnull(i) && i, e.off(transitionEnd).on(transitionEnd, {
        div: e,
        prop: t,
        func: o,
        log: i
    }, transitionComplete)
}

function addTransition(e, t, o, i, n) {
    n = !!notnull(n) && n, e.off(transitionEnd).addClass(t).on(transitionEnd, {
        div: e,
        prop: o,
        func: i,
        log: n
    }, transitionComplete)
}

function removeTransition(e, t, o, i, n) {
    n = !!notnull(n) && n, e.off(transitionEnd).removeClass(t).on(transitionEnd, {
        div: e,
        prop: o,
        func: i,
        log: n
    }, transitionComplete)
}

function transitionComplete(e) {
    notnull(e.data) && notnull(e.data.func) && e.originalEvent.propertyName.replace("-webkit-", "") == e.data.prop && e.data.div.attr("id") == e.target.id && (notnull(e.data.log), e.data.div.off(transitionEnd), e.data.func())
}

function getCSSMatrix(e) {
    if (!isnull(e)) {
        var t = e.css("-webkit-transform") || e.css("-moz-transform") || e.css("-ms-transform") || e.css("-o-transform") || e.css("transform");
        return isnull(t) ? [1] : t.replace(/[^0-9\-.,]/g, "").split(",")
    }
    return [1]
}

function getScale(e) {
    return getCSSMatrix(e)[0]
}

function cssAnimate(e, t) {
    e.addClass(t).one(animationEnd, function(e) {
        $(e.target).removeClass(t)
    })
}

function getEvents(e) {
    var t = $._data(e, "events"),
        o = $._data(document, "events");
    for (var i in o)
        if (o.hasOwnProperty(i))
            for (var n = o[i], s = 0; s < n.length; s++) $(e).is(n[s].selector) && (null == t && (t = {}), t.hasOwnProperty(i) || (t[i] = []), t[i].push(n[s]));
    return t
}

function stopProp(e) {
    notnull(e) && e.stopPropagation()
}
String.prototype.replaceAt = function(e, t) {
    return this.substr(0, e) + t + this.substr(e + t.length)
};
var templateW = 1024,
    templateH = 768,
    stageScale = 1,
    pictoScale = 1,
    poloScale = 1,
    popupScale = 1,
    mixlistScale = 1,
    extendVideo = !1,
    ultrawide = !1;

function getScreenSize() {
    if (screenW = document.body.offsetWidth, screenH = document.body.offsetHeight, trustAppMobile ? (screenW = screen.width, screenH = screen.height) : (screenW = document.body.offsetWidth, screenH = document.body.offsetHeight), isIOS && screenH > screenW) {
        var e = screenW;
        screenW = screenH, screenH = e
    }
}

function resizeApp() {
    getScreenSize(), trustAppMobile && isIOS && $("html").css({
        position: "relative",
        width: screenW + "px",
        height: screenH + "px"
    });
    var e, t = $("#app-incredibox"),
        o = $("#mixlist");
    $("body").hasClass("fluid") && (e = screenW * templateH / screenH, t.height(templateH), t.width(e), stageScale = screenH / templateH, t.css({
        transform: "scale(" + stageScale + ")"
    }), (ultrawide = screenW / screenH >= 1.8) && $("body").addClass("ultrawide"), checkMobile() && ($("body").addClass("mobile"), popupScale = 1.8, poloScale = 1.15, pictoScale = 1.15, mixlistScale = 1.3));
    var i = t.height(),
        n = t.width();
    if (pageApp) {
        var s = "<style type='text/css'>",
            a = $("#box-top").height(),
            u = $("#box-bottom").height(),
            r = parseInt($("#box-bottom").css("top")),
            c = i - u - a,
            p = n,
            l = getAppBound();
        s += "#lock-pause #top-resume{ height:" + a + "px; }", s += "#game { background-position: 0px " + a + "px; background-size:100% " + c + "px;}", s += "#lock-stage{ top:" + a + "px; }", s += "#box-reading-bar{ top:" + a + "px; }";
        var d, f, h = 400 * p / 1e3;
        if (h < c) d = c, f = 1e3 * c / 400;
        else {
            f = p;
            var m = a + (d = h) - r;
            if (m > 60) {
                extendVideo = !0;
                var v = m;
                r + v > i - a && (d = i - 2 * a, v = u - a), s += "#game #box-bottom.bottomSlide{ transform:translate3d(0px," + v + "px,0px);}", s += ".box-popup.mini .bac, .box-popup.mini .flex { transition: bottom .3s ease-in-out; }", s += ".box-popup.bottomSlide.mini .bac, .box-popup.bottomSlide.mini .flex { bottom: " + a + "px!important; }"
            } else d = c
        }
        $("#box-video").css({
            top: a + "px",
            width: Math.round(f) + "px",
            height: Math.round(d) + "px"
        }), $("#fade-video").css({
            top: a + "px",
            height: d + "px"
        }), $("#box-stage").css({
            transform: "scale(" + poloScale + ")",
            "transform-origin": "center bottom"
        }), $("#box-loader-polo").css({
            transform: "scale(" + poloScale + ")",
            "transform-origin": "center top"
        }), $("#stage-overflow").css({
            height: Math.floor(400 / poloScale) + "px"
        }), $("#box-picto").css({
            transform: "scale(" + pictoScale + ")"
        }), $("#mixlist .scale").css({
            transform: "scale(" + mixlistScale + ")"
        }), $("#mixlist").css("height", l.height / stageScale + l.top + "px"), $("#mixlist #poplist").css("height", Math.round(($("#mixlist").height() - parseFloat($("#mixlist #poplist").css("top"))) / mixlistScale) + "px"), s += "</style>", $(s).appendTo("head")
    }
    if (getAppSizeInfo(), appDesktop && !$("body").hasClass("fluid")) {
        var b, g = templateH + (1100 - templateH);
        $(window).resize(function() {
            getScreenSize(), b = Math.round((screenH - templateH) / 2), screenH > 1100 ? (stageScale = screenH / g, t.css({
                transform: "scale(" + stageScale + ")"
            })) : stageScale > 1 && (stageScale = 1, t.css({
                transform: "scale(" + stageScale + ")"
            })), pageApp && (o.css("height", templateH + b + "px"), resetStagePosition()), getAppSizeInfo()
        }), $(window).resize()
    }
    if (!appBrowser || appBrowserDemo || appBrowserExpo || ($(window).resize(function() {
            getScreenSize(), stageScale = (stageScale = screenH / templateH) > 1 ? 1 : stageScale, t.css({
                transform: "scale(" + stageScale + ")"
            }), pageApp && resetStagePosition()
        }), $(window).resize()), appBrowserExpo) {
        var x = stageScale;
        templateH = screenH, $(window).resize(function() {
            getScreenSize(), stageScale = screenH * x / templateH, t.css({
                transform: "scale(" + stageScale + ")"
            }), resetStagePosition()
        }), $(window).resize()
    }
    $("body").css({
        visibility: "visible"
    })
}

function getAppBound() {
    return document.getElementById("app-incredibox").getBoundingClientRect()
}

function getAppSizeInfo() {
    getAppBound()
}

function resetStagePosition() {
    if (appLoaded) {
        for (var e = 0; e < nbData; e++) listPicto[e].setPosition();
        for (e = 0; e < app.nbpolo; e++) listPolo[e].setPosition()
    }
}
var evtClick, evtPress, evtPressEnd, evtMove, screenW, screenH, appMobile = "mobile" == target,
    appDesktop = "desktop" == target,
    appBrowser = "browser" == target,
    appBrowserDemo = !1,
    appBrowserExpo = !1,
    pageExt = appMobile || appDesktop ? "html" : "php",
    isMouseDevice = checkMouseDevice(),
    isTouchDevice = checkTouchDevice(),
    isHybridDevice = isMouseDevice && isTouchDevice,
    isTouchCapable = isTouchDevice || isHybridDevice,
    isComputer = checkAppDesktop() || checkInBrowser(),
    trustAppMobile = (window.hasOwnProperty("cordova") || "object" == typeof cordova) && void 0 != window.cordova,
    trustAppDesktop = window.hasOwnProperty("_electron") || "_electron" == typeof cordova,
    isIframe = inIframe(),
    isMiniDevice = !1,
    isMobile = !1,
    isSafari = !appMobile && /^((?!chrome|android).)*safari/i.test(navigator.userAgent),
    isOpera = !appMobile && !appDesktop && checkIsOpera(),
    isIOS = !1,
    isOSX = !1,
    isWin = !1,
    isAndroid = !1,
    isiPod = !1,
    isiPhone = !1,
    isiPhone4s = !1,
    isiPhone5 = !1,
    isiPhone6s = !1,
    isiPhoneX = !1,
    isiPad = !1,
    isiPadPro = !1,
    isiPadProBig = !1,
    isiPadMini = !1,
    forceMaj = !1,
    hasWorker = window.Worker || !1,
    hasHBI = !1,
    isRetina = !1,
    assetSize = "",
    animeSize = "",
    isAssetHD = !1,
    isAnimeHD = !1;

function checkSystem() {
    if (hasNetwork = networkState(), machine = getDeviceInfo(!0), user = getUserInfo(), "undefined" != typeof device ? (trustAppMobile = !0, isIOS = "ios" == device.platform.toLowerCase(), getScreenSize(), isAndroid = "android" == device.platform.toLowerCase(), isiPod = -1 != device.model.indexOf("iPod"), isiPhone = -1 != device.model.indexOf("iPhone"), isiPhone5 = isiPhone && -1 != device.model.indexOf("iPhone5"), isiPhone6s = isiPhone && -1 != device.model.indexOf("iPhone8,") && -1 == device.model.indexOf("iPhone8,4"), device.modelname = phoneModel.get(device.model), hasHBI = isIOS && checkHBI()) : (getScreenSize(), isOSX = "mac os x" == machine.osName, isIOS = "ios" == machine.osName, isWin = "windows" == machine.osName, isAndroid = "android" == machine.osName, isiPod = -1 != machine.deviceModel.indexOf("ipod"), isiPhone = -1 != machine.deviceModel.indexOf("iphone"), isiPhone5 = isiPhone && 5 == machine.deviceNumber), isiPhone4s = checkiPhone4s(), isiPhoneX = checkiPhoneX(), isiPad = checkiPad(), isiPadPro = checkiPadPro(), isiPadProBig = checkiPadProBig(), isiPadMini = checkiPadMini(), isRetina = checkRetina(), isMobile = checkMobile(), isMiniDevice = checkMiniDevice(), trustAppMobile && (screenW > 1024 && screenH > 768 && window.devicePixelRatio > 1 && (assetSize = "hd", animeSize = "hd"), isIOS && (isiPhone && 4 == machine.deviceNumber && (animeSize = "mini"), isiPhone && machine.deviceNumber > 5 && (assetSize = "hd"), isiPad && (assetSize = "hd"), isiPadPro && (animeSize = "hd"))), isAssetHD = "hd" == assetSize, isAnimeHD = "hd" == animeSize, "hd" != assetSize && "mini" != assetSize || $("img").each(function(e) {
            var t = $(this).attr("src");
            if ("svg" != t.split(".")[1]) {
                var o = "hd" == assetSize ? nameToHD(t) : nameToMini(t);
                $(this).attr("src", o)
            }
        }), appBrowser && (sndtype = checkAudioFormat("ogg") ? "ogg" : sndtype, vidtype = "mozilla firefox" == machine.browserName && machine.browserVersion <= 48 ? "webm" : "mp4"), setPointerEvent(), appDesktop && ($("body").addClass("appDesktop"), document.body.classList.add("appDesktop"), document.body.classList.add("noPadding")), !appBrowser || appBrowserDemo || appBrowserExpo || ($("body").addClass("appBrowser"), $("body").addClass("noPadding")), appBrowserDemo && ($("body").addClass("appBrowserDemo"), $("body").addClass("fluid")), appMobile && $("body").addClass("fluid"), isMouseDevice && !isTouchDevice && $("body").addClass("mouseEvent"), hasHBI && $("body").addClass("hasHBI"), isiPhoneX && $("body").addClass("iPhoneX"), isiPhone4s && $("body").addClass("iPhone4s"), isOpera && $("body").addClass("isOpera"), trustAppDesktop && "steam" == store && "YXJw" != btoa(_electron.app.commandLine.getSwitchValue("arg"))) throw new BoxDialog("#pop-dialog").open("Incredibox needs to run from<br>your Steam library.<br>Thanks for your support!", "&#129488;", [], !0, !0), new Error("Please connect to your Steam account")
}

function checkHBI() {
    return -1 != device.model.indexOf("iPad8,1") || -1 != device.model.indexOf("iPad8,2") || -1 != device.model.indexOf("iPad8,3") || -1 != device.model.indexOf("iPad8,4") || -1 != device.model.indexOf("iPad8,5") || -1 != device.model.indexOf("iPad8,6") || -1 != device.model.indexOf("iPad8,7") || -1 != device.model.indexOf("iPad8,8") || -1 != device.model.indexOf("iPhone10,3") || -1 != device.model.indexOf("iPhone10,6") || -1 != device.model.indexOf("iPhone11,2") || -1 != device.model.indexOf("iPhone11,4") || -1 != device.model.indexOf("iPhone11,6") || -1 != device.model.indexOf("iPhone11,8") || -1 != device.model.indexOf("iPhone12,1") || -1 != device.model.indexOf("iPhone12,3") || -1 != device.model.indexOf("iPhone12,5")
}

function getListUUID() {
    var e = [];
    e.push(machine.uuid);
    var t = storage.getAllItem();
    for (var o in t) {
        if (-1 != o.indexOf("uuid-")) "" != o.replace("uuid-", "") ? e.push(o.replace("uuid-", "")) : storage.removeItem(o)
    }
    return removeDupInArray(e, !1)
}

function functionExist() {
    "function" != typeof initAnalytics && (window.self.initAnalytics = function() {
        return !1
    }, window.self.saveGA = function() {
        return !1
    })
}

function secureIframe() {}

function checkInBrowser() {
    return document.URL.indexOf("http://") > -1 || document.URL.indexOf("https://") > -1
}

function checkOnDevice() {
    return !!navigator.userAgent.match(/(iPhone|iPod|iPad|Android)/)
}

function checkMobile() {
    return screenW <= 823 && screenH <= 504
}

function checkMiniDevice() {
    return !isComputer && (isiPhone4s || screenW <= 568 && !isRetina)
}

function checkRetina() {
    return window.devicePixelRatio > 1 || !(!window.matchMedia || !window.matchMedia("(-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-min-device-pixel-ratio: 3/2), (min-resolution: 1.5dppx)").matches)
}

function checkAppDesktop() {
    return navigator.userAgent.toLowerCase().indexOf(" electron/") > -1
}

function checkIsOpera() {
    var e = navigator.userAgent.toLowerCase();
    return e.indexOf("opera") > -1 || e.indexOf("opr") > -1
}

function checkTouchDevice() {
    var e = !1;
    try {
        document.createEvent("TouchEvent"), e = !0
    } catch (e) {}
    return ("ontouchstart" in window || navigator.maxTouchPoints > 0 || navigator.msMaxTouchPoints > 0) && (e = !0), window.matchMedia("(pointer: coarse)").matches && (e = !0), e
}

function checkMouseDevice() {
    var e = !1;
    return window.matchMedia("(hover: hover)").matches && window.matchMedia("(pointer: fine)").matches && (e = !0), e
}

function getUUID() {
    var e;
    return trustAppMobile ? e = device.uuid : appDesktop ? e = _electron.machine.machineIdSync() : notnull(storage.getItem("tmp-uuid")) ? e = storage.getItem("tmp-uuid") : (e = "tmp-" + uniqid("-"), storage.setItem("tmp-uuid", e)), e
}

function checkAudioFormat(e) {
    e = e || "mp3";
    var t = document.createElement("audio");
    return !(!t.canPlayType || !t.canPlayType("audio/" + e + ";").replace(/no/, ""))
}

function checkSupported() {
    var e = !!window.HTMLCanvasElement,
        t = window.AudioContext || window.webkitAudioContext || !1,
        o = "string" == typeof(new XMLHttpRequest).responseType,
        i = !isnull(transitionEnd) && !isnull(animationEnd);
    return window.AudioContext = t, e ? t ? o ? i ? "ok" : "CSS3 is not supported" : "XHR is not supported" : "Audio API is not supported" : "Canvas is not supported"
}

function checkForMaj(e) {
    var t = e || function() {},
        o = setTimeout(t, 2e3),
        i = build.getInfo().version.substr(0, 5);
    hasNetwork && (appDesktop || trustAppMobile) ? xhr("GET", domainOnline + "ph2/check-maj.php?os=" + (isWin ? "win" : isOSX ? "osx" : isIOS ? "ios" : isAndroid ? "and" : "web"), {}, function(e) {
        if (clearTimeout(o), notnull(e.lastversion)) {
            var n = parseInt(e.lastversion.split(".").join("")),
                s = parseInt(i.split(".").join(""));
            s < n && (forceMaj = !0)
        }
        t()
    }, function() {
        clearTimeout(o), t()
    }) : (clearTimeout(o), t())
}

function openDialogForceMaj() {
    if (!isSafeMode() && forceMaj) {
        var e = !appDesktop;
        boxDialog.open(STR("pop.majText"), STR("pop.majTitle"), [STR("bt.update")], [function() {
            openURL(build.getInfo().url)
        }], e, !0), saveGA("popup", "force_update", build.getInfo().version + " (app version is too old)")
    }
}

function setPointerEvent() {
    isHybridDevice && !isIOS ? (evtClick = "touchstart click", evtPress = "touchstart mousedown", evtPressEnd = "touchend mouseup", evtMove = "touchmove mousemove") : isTouchDevice ? (evtClick = "touchstart", evtPress = "touchstart", evtPressEnd = "touchend", evtMove = "touchmove") : (evtClick = "click", evtPress = "mousedown", evtPressEnd = "mouseup", evtMove = "mousemove")
}

function initRightClick() {}

function networkOn() {
    hasNetwork = !0, checkForMaj(openDialogForceMaj), gaShouldTrack && !gaAlreadySet && initAnalytics(), storage.restoreAllMix()
}

function networkOff() {
    hasNetwork = !1
}

function networkState() {
    var e = !1;
    return notnull(navigator.onLine) ? e = navigator.onLine : notnull(navigator.network) && (e = !(navigator.network.connection.type == Connection.NONE)), e
}

function bugBluetoothLatency() {
    return !notnull(getParameterByName("bluetooth")) && (!!(trustAppMobile && isAndroid && contextAudio.baseLatency > .2 && window.hasOwnProperty("bluetoothle")) && (bluetoothle.initialize(function(e) {
        switch (e.status) {
            case "enabled":
                bluetoothle.disable();
                break;
            case "disabled":
                $("#fade-all").removeClass(), boxDialog.open(STR("dial.bluetoothLatencyText"), STR("dial.bluetoothLatencyTitle"), [STR("bt.ok")], [function() {
                    window.location.href = "?v=" + appNumberVersion + "&bluetooth=1"
                }])
        }
    }, {
        statusReceiver: !0
    }), !0))
}

function bugSampleRate() {
    return !1
}
window.devicePixelRatio = window.devicePixelRatio || 1, functionExist(), secureIframe();
var audioPort = "";

function checkAudioRoute() {}

function checkStateAudioContext() {
    notnull(contextAudio) && "interrupted" == contextAudio.state && (contextAudio.resume(), rebuildAudioContext())
}

function rebuildAudioContext() {
    var e = contextAudio.createBuffer(1, 1, 44100),
        t = contextAudio.createBufferSource();
    t.buffer = e, t.connect(contextAudio.destination), t.start(0), t.disconnect(), contextAudio.close(), (contextAudio = new AudioContext).onstatechange = listenStateAudioCtx()
}

function listenStateAudioCtx() {}

function initSilentMode() {}

function detectSilentMode() {}
var immersiveMode = !1;

function launchImmersiveMode() {
    trustAppMobile && isAndroid && !immersiveMode && (immersiveMode = !0, AndroidFullScreen.isSupported(function() {
        AndroidFullScreen.isImmersiveModeSupported(function() {
            AndroidFullScreen.setSystemUiVisibility(AndroidFullScreen.SYSTEM_UI_FLAG_LAYOUT_STABLE | AndroidFullScreen.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION | AndroidFullScreen.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | AndroidFullScreen.SYSTEM_UI_FLAG_HIDE_NAVIGATION | AndroidFullScreen.SYSTEM_UI_FLAG_FULLSCREEN | AndroidFullScreen.SYSTEM_UI_FLAG_IMMERSIVE_STICKY, function() {}, function() {}), AndroidFullScreen.immersiveMode(function() {}, errorImmersiveMode)
        }, errorImmersiveMode)
    }, errorImmersiveMode))
}

function errorImmersiveMode(e) {}
var phoneModel = {
    model: {
        "iPhone1,1": "iPhone",
        "iPhone1,2": "iPhone 3G",
        "iPhone2,1": "iPhone 3GS",
        "iPhone3,1": "iPhone 4",
        "iPhone3,2": "iPhone 4 GSM Rev A",
        "iPhone3,3": "iPhone 4 CDMA",
        "iPhone4,1": "iPhone 4S",
        "iPhone5,1": "iPhone 5 (GSM)",
        "iPhone5,2": "iPhone 5 (GSM+CDMA)",
        "iPhone5,3": "iPhone 5C (GSM)",
        "iPhone5,4": "iPhone 5C (Global)",
        "iPhone6,1": "iPhone 5S (GSM)",
        "iPhone6,2": "iPhone 5S (Global)",
        "iPhone7,1": "iPhone 6 Plus",
        "iPhone7,2": "iPhone 6",
        "iPhone8,1": "iPhone 6s",
        "iPhone8,2": "iPhone 6s Plus",
        "iPhone8,4": "iPhone SE (GSM)",
        "iPhone9,1": "iPhone 7",
        "iPhone9,2": "iPhone 7 Plus",
        "iPhone9,3": "iPhone 7",
        "iPhone9,4": "iPhone 7 Plus",
        "iPhone10,1": "iPhone 8",
        "iPhone10,2": "iPhone 8 Plus",
        "iPhone10,3": "iPhone X Global",
        "iPhone10,4": "iPhone 8",
        "iPhone10,5": "iPhone 8 Plus",
        "iPhone10,6": "iPhone X GSM",
        "iPhone11,2": "iPhone XS",
        "iPhone11,4": "iPhone XS Max",
        "iPhone11,6": "iPhone XS Max Global",
        "iPhone11,8": "iPhone XR",
        "iPhone12,1": "iPhone 11",
        "iPhone12,3": "iPhone 11 Pro",
        "iPhone12,5": "iPhone 11 Pro Max",
        "iPod1,1": "1st Gen iPod",
        "iPod2,1": "2nd Gen iPod",
        "iPod3,1": "3rd Gen iPod",
        "iPod4,1": "4th Gen iPod",
        "iPod5,1": "5th Gen iPod",
        "iPod7,1": "6th Gen iPod",
        "iPod9,1": "7th Gen iPod",
        "iPad1,1": "iPad",
        "iPad1,2": "iPad 3G",
        "iPad2,1": "2nd Gen iPad",
        "iPad2,2": "2nd Gen iPad GSM",
        "iPad2,3": "2nd Gen iPad CDMA",
        "iPad2,4": "2nd Gen iPad New Revision",
        "iPad3,1": "3rd Gen iPad",
        "iPad3,2": "3rd Gen iPad CDMA",
        "iPad3,3": "3rd Gen iPad GSM",
        "iPad2,5": "iPad mini",
        "iPad2,6": "iPad mini GSM+LTE",
        "iPad2,7": "iPad mini CDMA+LTE",
        "iPad3,4": "4th Gen iPad",
        "iPad3,5": "4th Gen iPad GSM+LTE",
        "iPad3,6": "4th Gen iPad CDMA+LTE",
        "iPad4,1": "iPad Air (WiFi)",
        "iPad4,2": "iPad Air (GSM+CDMA)",
        "iPad4,3": "1st Gen iPad Air (China)",
        "iPad4,4": "iPad mini Retina (WiFi)",
        "iPad4,5": "iPad mini Retina (GSM+CDMA)",
        "iPad4,6": "iPad mini Retina (China)",
        "iPad4,7": "iPad mini 3 (WiFi)",
        "iPad4,8": "iPad mini 3 (GSM+CDMA)",
        "iPad4,9": "iPad Mini 3 (China)",
        "iPad5,1": "iPad mini 4 (WiFi)",
        "iPad5,2": "4th Gen iPad mini (WiFi+Cellular)",
        "iPad5,3": "iPad Air 2 (WiFi)",
        "iPad5,4": "iPad Air 2 (Cellular)",
        "iPad6,3": "iPad Pro (9.7 inch, WiFi)",
        "iPad6,4": "iPad Pro (9.7 inch, WiFi+LTE)",
        "iPad6,7": "iPad Pro (12.9 inch, WiFi)",
        "iPad6,8": "iPad Pro (12.9 inch, WiFi+LTE)",
        "iPad6,11": "iPad (2017)",
        "iPad6,12": "iPad (2017)",
        "iPad7,1": "iPad Pro 2nd Gen (WiFi)",
        "iPad7,2": "iPad Pro 2nd Gen (WiFi+Cellular)",
        "iPad7,3": "iPad Pro 10.5-inch",
        "iPad7,4": "iPad Pro 10.5-inch",
        "iPad7,5": "iPad 6th Gen (WiFi)",
        "iPad7,6": "iPad 6th Gen (WiFi+Cellular)",
        "iPad7,11": "iPad 7th Gen 10.2-inch (WiFi)",
        "iPad7,12": "iPad 7th Gen 10.2-inch (WiFi+Cellular)",
        "iPad8,1": "iPad Pro 3rd Gen (11 inch, WiFi)",
        "iPad8,2": "iPad Pro 3rd Gen (11 inch, 1TB, WiFi)",
        "iPad8,3": "iPad Pro 3rd Gen (11 inch, WiFi+Cellular)",
        "iPad8,4": "iPad Pro 3rd Gen (11 inch, 1TB, WiFi+Cellular)",
        "iPad8,5": "iPad Pro 3rd Gen (12.9 inch, WiFi)",
        "iPad8,6": "iPad Pro 3rd Gen (12.9 inch, 1TB, WiFi)",
        "iPad8,7": "iPad Pro 3rd Gen (12.9 inch, WiFi+Cellular)",
        "iPad8,8": "iPad Pro 3rd Gen (12.9 inch, 1TB, WiFi+Cellular)",
        "iPad11,1": "iPad mini 5th Gen (WiFi)",
        "iPad11,2": "iPad mini 5th Gen",
        "iPad11,3": "iPad Air 3rd Gen (WiFi)",
        "iPad11,4": "iPad Air 3rd Gen"
    },
    get: function(e) {
        var t = this.model[e];
        return isnull(t) ? e : t
    }
};

function getUserInfo() {
    return {
        guid: storage.getItem("user-guid") || "",
        djname: storage.getItem("user-djname") || "",
        lang: storage.getItem("user-lang") || ""
    }
}

function setUserInfo(e) {
    notnull(e.guid) && (user.guid = e.guid, storage.setItem("user-guid", user.guid), cloud.save("user-guid", user.guid)), notnull(e.djname) && (user.djname = e.djname, storage.setItem("user-djname", user.djname), cloud.save("user-djname", user.djname)), notnull(e.lang) && (user.lang = e.lang, storage.setItem("user-lang", user.lang), cloud.save("user-lang", user.lang)), user = getUserInfo()
}

function getDeviceInfo(e) {
    var t, o, i, n = navigator.userAgent || navigator.vendor || window.opera,
        s = n.toLowerCase(),
        a = "(?)";
    /(fban|fbios|fbav|fbbv|fbid)/.test(s) ? a = "Facebook" : /(twitter)/.test(s) && (a = "Twitter");
    var u = "(?)";
    /(windows|win16)/.test(s) ? u = "Windows" : /(android)/.test(s) ? u = "Android" : /(iphone|ipad|ipod)/.test(s) ? u = "iOS" : /(mac os x)/.test(s) ? u = "Mac OS X" : /(macppc|macintel|mac_powerpc|macintosh)/.test(s) && (u = "Mac OS");
    var r = "(?)";
    /(windows phone|windows phone)/.test(s) ? r = "Windows phone" : /(windows|win16)/.test(s) ? r = "PC" : /(android)/.test(s) ? r = "Android" : /(ipad)/.test(s) ? r = "iPad" : /(iphone)/.test(s) ? r = "iPhone" : /(ipod)/.test(s) ? r = "iPod" : /(mac)/.test(s) && (r = "Mac");
    var c = "(?)";
    trustAppMobile ? c = device.version : "Windows" == u ? /(windows 10.0|windows nt 10.0)/.test(s) ? c = "10" : /(windows 8.1|windows nt 6.3)/.test(s) ? c = "8.1" : /(windows 8|windows nt 6.2)/.test(s) ? c = "8" : /(windows 7|windows nt 6.1)/.test(s) ? c = "7" : /(windows nt 6.0)/.test(s) ? c = "Vista" : /(windows nt 5.2)/.test(s) ? c = "Server 2003" : /(windows nt 5.1|windows xp)/.test(s) ? c = "XP" : /(windows nt 5.0|windows 2000)/.test(s) ? c = "2000" : /(win 9x 4.90|windows me)/.test(s) ? c = "ME" : /(windows 98|win98)/.test(s) ? c = "98" : /(windows 95|win95|windows_95)/.test(s) ? c = "95" : /(windows nt 4.0|winnt4.0|winnt|windows nt)/.test(s) ? c = "NT 4.0" : /(windows ce)/.test(s) ? c = "CE" : /(win16)/.test(s) && (c = "3.11") : "Android" == u ? (t = "Android", o = n.toLowerCase().indexOf(t.toLowerCase()), i = parseFloat(n.slice(o + t.length, o + t.length + 6)), c = isNaN(i) ? c : i) : "iOS" == u ? (t = "OS", o = n.toLowerCase().indexOf(t.toLowerCase()), i = n.slice(o + t.length, o + t.length + 6), i = parseFloat(i.replace("_", ".")), c = isNaN(i) ? c : i) : -1 != u.indexOf("Mac OS") && (t = -1 != u.indexOf("Mac OS X") ? "Mac OS X" : "Mac OS", o = n.toLowerCase().indexOf(t.toLowerCase()), i = n.slice(o + t.length, o + t.length + 6), i = parseFloat(i.replace("_", ".")), c = isNaN(i) ? c : i);
    var p = 0;
    if ("iOS" == u && "iPhone" == r) {
        var l = window.screen.width,
            d = window.screen.height;
        p = 0, 320 == l && 480 == d && (p = 4), 320 == l && 568 == d && (p = 5), 375 == l && 667 == d && (p = 6), 414 == l && 736 == d && (p = 6), 375 == l && 812 == d && (p = 10), 414 == l && 896 == d && (p = 10)
    }
    var f = "";
    f = "mac os x" == u.toLowerCase() ? "osx" : f, f = "windows" == u.toLowerCase() ? "win" : f, f = "android" == u.toLowerCase() ? "and" : f, f = "ios" == u.toLowerCase() ? "ios" : f;
    navigator.appVersion;
    var h, m, v, b = navigator.appName,
        g = "" + parseFloat(navigator.appVersion),
        x = parseInt(navigator.appVersion, 10); - 1 != (m = n.indexOf("OPR/")) ? (b = "Opera", g = n.substring(m + 4)) : -1 != (m = n.indexOf("Opera")) ? (b = "Opera", g = n.substring(m + 6), -1 != (m = n.indexOf("Version")) && (g = n.substring(m + 8))) : -1 != (m = n.indexOf("Edge")) ? (b = "Microsoft Edge", g = n.substring(m + 5)) : -1 != (m = n.indexOf("MSIE")) ? (b = "Microsoft Internet Explorer", g = n.substring(m + 5)) : -1 != (m = n.indexOf("Trident")) ? (b = "Microsoft Internet Explorer", -1 != (m = n.indexOf("rv:")) && (g = n.substring(m + 3))) : -1 != (m = n.indexOf("CriOS")) && /iphone|ipod|ipad/i.test(n) ? (b = "Google Chrome for IOS", g = n.substring(m + 6)) : -1 != (m = n.indexOf("Chrome")) ? (b = "Google Chrome", g = n.substring(m + 7)) : -1 != (m = n.indexOf("Safari")) ? (b = "Safari", g = n.substring(m + 7), -1 != (m = n.indexOf("Version")) && (g = n.substring(m + 8))) : -1 != (m = n.indexOf("Firefox")) ? (b = "Mozilla Firefox", g = n.substring(m + 8)) : (h = n.lastIndexOf(" ") + 1) < (m = n.lastIndexOf("/")) && (b = n.substring(h, m), g = n.substring(m + 1), b.toLowerCase() == b.toUpperCase() && (b = navigator.appName)), -1 != (v = g.indexOf(";")) && (g = g.substring(0, v)), -1 != (v = g.indexOf(" ")) && (g = g.substring(0, v)), x = parseInt("" + g, 10), isNaN(x) && (g = "" + parseFloat(navigator.appVersion), x = parseInt(navigator.appVersion, 10));
    var D = getUUID(),
        C = notnull(navigator.language) ? navigator.language : "",
        k = {
            osName: u,
            osTiny: f,
            osVersion: c.toString(),
            deviceModel: r,
            deviceNumber: p,
            browserName: b,
            browserVersion: x,
            browserFullVersion: g,
            browserAppName: navigator.appName,
            browserUserAgent: navigator.userAgent,
            language: C,
            webviewEmbed: a,
            uuid: D
        };
    if (!0 === e)
        for (var P in k) "string" == typeof k[P] && (k[P] = k[P].toLowerCase());
    return k
}

function checkiPad() {
    return !!isIOS && (trustAppMobile && notnull(device) ? -1 != device.model.toLowerCase().indexOf("ipad") : -1 != machine.deviceModel.toLowerCase().indexOf("ipad"))
}

function checkiPadPro() {
    return !!isIOS && (trustAppMobile && notnull(device) ? -1 != phoneModel.get(device.model).toLowerCase().indexOf("ipad pro") : window.devicePixelRatio > 1 && 1366 == screenW && 1024 == screenH)
}

function checkiPadProBig() {
    return !!isIOS && (trustAppMobile && notnull(device) ? -1 != phoneModel.get(device.model).toLowerCase().indexOf("ipad pro") && -1 == phoneModel.get(device.model).toLowerCase().indexOf("9.7") : window.devicePixelRatio > 1 && 1366 == screenW && 1024 == screenH)
}

function checkiPadMini() {
    return !!(isIOS && trustAppMobile && notnull(device)) && -1 != phoneModel.get(device.model).toLowerCase().indexOf("ipad mini")
}

function checkiPhoneX() {
    return !!isIOS && (trustAppMobile && notnull(device) ? -1 != phoneModel.get(device.model).toLowerCase().indexOf("iphone x") : 3 == window.devicePixelRatio && (812 == screenW && 375 == screenH || 896 == screenW && 414 == screenH))
}

function checkiPhone4s() {
    return !!isIOS && (trustAppMobile && notnull(device) ? -1 != phoneModel.get(device.model).toLowerCase().indexOf("iphone 4s") : 2 == window.devicePixelRatio && 480 == screenW && 320 == screenH)
}

function iPhone6sAndMore() {
    var e = device.model.toLowerCase().split(",")[0];
    return Number(e.slice(6, e.length)) >= 8
}

function initRulesCSS() {
    var e = "";
    e += '#sp-select .icon .img { background-image: url("' + assetName("img/switch-bt.png") + '"); }', e += '#sp-select .icon .txt { background-image: url("' + assetName("img/switch-bt.png") + '"); }', pageApp && (e += `\n\t\t\t:root {\n\t\t\t\t--colBck : ${app.colBck};\n\t\t\t\t--col0 : ${app.col0};\n\t\t\t\t--col1 : ${app.col1};\n\t\t\t\t--col2 : ${app.col2};\n\t\t\t\t--col3 : ${app.col3};\n\t\t\t\t--col4 : ${app.col4};\n\t\t\t}\n\n\t\t\t#game { \n\t\t\t\tbackground-image: url('${assetName(app.folder+"img/game-bck.jpg")}');\n\t\t\t}\n\t\t\t`);
    var t = document.head || document.getElementsByTagName("head")[0],
        o = document.createElement("style");
    t.appendChild(o), o.type = "text/css", o.appendChild(document.createTextNode(e))
}

function BoxDialog(e) {
    var t = this,
        o = $(e);

    function i(e) {
        e.preventDefault(), stopProp(e), $(e.target).addClass("active");
        var t = !0;
        void 0 !== e.data.func && (e.data.func === n && (t = !1), e.data.func()), t && n()
    }

    function n() {
        t.neverClose || t.close()
    }
    return this.$div = o, this.$bck = o.find(".bac"), this.$scale = o.find(".scale"), this.$box = o.find(".box"), this.$pop = o.find(".pop"), this.$pop.$title = o.find(".title"), this.$pop.$text = o.find(".text"), this.$pop.$content = o.find(".content"), this.opened = !1, this.neverClose = !1, this.isOpen = function() {
        return t.opened
    }, this.open = function(e, s, a, u, r, c, p) {
        t.isOpen() && (removeInArray("popup-dialog", focusHistory), deleteFocus(), t.killall()), o.on(evtPress, stopProp), t.opened = !0, t.neverClose = !isnull(c) && c, e = isnull(e) ? "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod" : e, s = isnull(s) ? "Info" : s, a = isnull(a) ? ["Close"] : a, u = isnull(u) ? [n] : u, r = !isnull(r) && r, notnull(p) && o.attr("data-name", p), o.addClass("show"), t.clean(), t.$pop.$title.html(s), t.$pop.$text.html(e);
        for (var l = 0, d = a.length; l < d; l++) {
            u[l];
            var f = a[l];
            t.$pop.$content.append('<div class="bt-mini light" id="bt-mini' + l + '"><div class="txt">' + f + '</div><div class="hitzone"></div></div>'), t.$pop.$content.find("#bt-mini" + l).off().on(evtClick, {
                func: u[l]
            }, i)
        }
        r && o.css({
            "z-index": "9999"
        }), t.fadeInBck(), t.$box.removeClass("open close").addClass("open"), createFocus("popup-dialog")
    }, this.close = function(e) {
        notnull(e) && e.preventDefault(), t.fadeOutBck(), t.$box.removeClass("open close").addClass("close").one(animationEnd, function(e) {
            $(e.target).removeClass("close"), o.removeClass("show"), o.removeAttr("data-name"), o.off(), t.clean(), t.opened = !1
        })
    }, this.killall = function() {
        removeInArray("popup-dialog", focusHistory), o.off(), o.removeAttr("data-name"), o.removeClass("show"), t.clean(), t.$box.removeClass("open close"), resetAnimationCSS(t.$box[0]), t.$bck.removeClass("animateFadeIn animateFadeOut"), resetAnimationCSS(t.$bck[0]), t.opened = !1
    }, this.fadeInBck = function(e) {
        e ? t.$bck.addClass("mini") : t.$bck.removeClass("mini"), t.$bck.addClass("animateFadeIn")
    }, this.fadeOutBck = function() {
        t.$bck.addClass("animateFadeOut").one(animationEnd, function(e) {
            $(e.target).removeClass("animateFadeIn animateFadeOut"), removeInArray("popup-dialog", focusHistory), createFocus(focusHistory[focusHistory.length - 1])
        })
    }, this.clean = function() {
        t.$pop.$content.find(".bt-mini").off(), t.$pop.$content.empty(), t.$pop.$title.empty(), t.$pop.$text.empty()
    }, this
}

function Popup(e) {
    var t, o = this,
        i = $(e),
        n = i.find(".bac"),
        s = i.find(".box"),
        a = i.find("span.icon"),
        u = i.find(".container"),
        r = i.find(".box-tab .tab").length > 0,
        c = !0,
        p = !0;

    function l() {
        c = !0, n.removeClass("animateFadeIn animateFadeOut"), o.closeComplete()
    }

    function d(e) {
        p = !0, s.removeClass("slideUp slideDown").get(0).offsetHeight, t.onBoxCloseEnd(), o.closeComplete(), tryfunc(e)
    }

    function f(e) {
        notnull(o.onCloseTab) && o.onCloseTab(), i.find(".tab.active").removeClass("active"), i.find(".pop.active").removeClass("active");
        var t = $(this),
            n = i.find(".pop#" + t.attr("id").replace("tab-", "pop-"));
        t.addClass("active"), n.addClass("active"), createFocus(n.attr("id"))
    }
    return this.$popup = i, this.$icon = a, this.objCustom = t, this.open = function(e) {
        notnull(t) && e.name == t.name || (i.hasClass("show") || i.addClass("show"), n.hasClass("animateFadeIn") || o.showBck(), s.hasClass("slideUp") ? o.hideBox(function() {
            o.open(e)
        }) : (o.custom(e), o.showBox()))
    }, this.close = function(e) {
        o.hideBck(e), o.hideBox(null, e)
    }, this.closeComplete = function() {
        c && p && (o.reinit(), tryfunc(t.onCloseComplete), t = null)
    }, this.reinit = function() {
        t.static || u.empty(), i.removeClass("show mini middle info action action-back no-action"), i.removeAttr("data-name"), n.removeClass("animateFadeIn animateFadeOut"), s.removeClass("slideUp slideDown").get(0).offsetHeight
    }, this.custom = function(e) {
        t = {
            static: e.static || !1,
            bodyclose: e.bodyclose || !1,
            bckclose: e.bckclose || !1,
            name: e.name || "no-name",
            icntype: e.icntype || "",
            bcksize: e.bcksize || "",
            content: e.content || "",
            onBoxOpenStart: e.onBoxOpenStart || nada,
            onBoxOpenEnd: e.onBoxOpenEnd || nada,
            onBoxCloseStart: e.onBoxCloseStart || nada,
            onBoxCloseEnd: e.onBoxCloseEnd || nada,
            onCloseComplete: e.onCloseComplete || nada
        }, i.removeClass("mini middle info action action-back no-action"), i.addClass(t.bcksize), i.attr("data-name", t.name), "" != t.icntype && (i.addClass(t.icntype), a.find("svg use").attr("xlink:href", "#ic-" + ("action" == t.icntype ? "close" : "action-back" == t.icntype ? "navl" : "info"))), t.static || u.html(t.content)
    }, this.refresh = function() {
        notnull(t) && notnull(t.content) && u.html(t.content)
    }, this.showBck = function() {
        c = !1, n.addClass("animateFadeIn").one(animationEnd, function() {})
    }, this.hideBck = function(e) {
        !0 === e ? l() : n.addClass("animateFadeOut").one(animationEnd, function() {
            l()
        })
    }, this.showBox = function() {
        p = !1, t.onBoxOpenStart(), r && (i.find(".box-tab .tab").first().trigger(evtClick.split(" ")[0]), deleteFocus()), s.addClass("slideUp").one(animationEnd, function() {
            t.bodyclose && $body.on(evtClick, o.clickBck), t.bckclose && n.on(evtClick, o.close), t.onBoxOpenEnd()
        })
    }, this.hideBox = function(e, i) {
        t.bodyclose && $body.off(evtClick, o.clickBck), t.bckclose && n.off(evtClick, o.close), t.onBoxCloseStart(), !0 === i ? d(e) : s.addClass("slideDown").one(animationEnd, function() {
            d(e)
        })
    }, this.clickBck = function(t) {
        if (t.preventDefault(), $(t.target).closest(e + " .box").length > 0);
        else if (r) {
            var i = notnull((t = ~t.type.indexOf("touch") ? t.originalEvent : t).targetTouches) ? t.targetTouches[0] : t;
            Math.round(i.pageY) > 100 * stageScale && o.close()
        } else o.close()
    }, this.isOpen = function() {
        return i.hasClass("show")
    }, this.getName = function() {
        return notnull(t) && notnull(t.name) ? t.name : ""
    }, r && i.find(".box-tab .tab").each(function(e) {
        $(this).on(evtClick, f)
    }), this
}

function checkIfPopupOpen() {
    notnull(boxPopup) && boxPopup.isOpen() && boxPopup.close(!0)
}

function boxInfoCustom() {
    var e = Math.floor(3 * screenW / templateW);
    e = e < 0 ? 1 : e;
    var t = boxInfo.$popup.find("#pop-tuto .slideshow");
    return t.$box = boxInfo.$popup.find("#pop-tuto .slideshow .img-box"), t.$btL = boxInfo.$popup.find("#pop-tuto .bt").first(), t.$btR = boxInfo.$popup.find("#pop-tuto .bt").last(), t.init = function() {
        var t = this,
            o = 0,
            i = 0,
            n = 0,
            s = 0,
            a = this.find(".overflow-box").width(),
            u = this.find("img").length;
        this.onPress = function(e) {
            $body.off(evtPressEnd, t.onRelease), t.$box.off(evtMove, t.onMove), (e = ~e.type.indexOf("touch") ? e.originalEvent : e).preventDefault();
            var i = notnull(e.targetTouches) ? e.targetTouches[0] : e;
            o = i.pageX, t.$box.on(evtMove, t.onMove), $body.on(evtPressEnd, t.onRelease)
        }, this.onMove = function(n) {
            n.preventDefault(), (n = ~n.type.indexOf("touch") ? n.originalEvent : n).preventDefault();
            var a = notnull(n.targetTouches) ? n.targetTouches[0] : n;
            i = -1 * Math.round(o - a.pageX), t.$box.css({
                transform: "translateX(" + (s + 1.6 * i / e) + "px)"
            })
        }, this.onRelease = function(e) {
            e.preventDefault(), $body.off(evtPressEnd, t.onRelease), t.$box.off(evtMove, t.onMove), i < -100 ? n != u - 1 ? t.slide("left") : t.slide() : i > 100 && 0 !== n ? t.slide("right") : t.slide(), o = 0, i = 0
        }, this.slide = function(e) {
            $body.off(evtPressEnd, t.onRelease), t.$box.off(evtMove, t.onMove), t.$box.addClass("slide"), "left" === e ? n++ : "right" === e && n--, s = -a * n, t.$box.css({
                transform: "translateX(" + String(s) + "px)"
            })
        }, this.clickLeft = function(e) {
            e.preventDefault(), 0 !== n && t.slide("right")
        }, this.clickRight = function(e) {
            e.preventDefault(), n != u - 1 && t.slide("left")
        }, this.reinit = function() {
            n > 0 && (o = i = n = s = 0, t.slide())
        }, t.$box.on(evtPress, t.onPress), this.$btL.on(evtClick, this.clickLeft), this.$btR.on(evtClick, this.clickRight)
    }, t.init(), t
}

function initPopupIndexApp() {
    (boxInfo = new Popup(".box-popup#pop-info")).$slide = boxInfoCustom(), boxInfo.onCloseTab = boxInfo.$slide.reinit, boxParam = new Popup(".box-popup#pop-param"), $("#pop-language .box-lang .bt-mini").on(evtClick, function(e) {
        e.preventDefault(), preventAction(function() {
            clickBtLang(e)
        })
    }), $("#pop-follow .bt.facebook").on("click", function(e) {
        e.preventDefault(), redirectTo("facebook")
    }), $("#pop-follow .bt.twitter").on("click", function(e) {
        e.preventDefault(), redirectTo("twitter")
    }), $("#pop-follow .bt.instagram").on("click", function(e) {
        e.preventDefault(), redirectTo("instagram")
    }), $("#pop-follow .bt.youtube").on("click", function(e) {
        e.preventDefault(), redirectTo("youtube")
    }), $("#pop-follow .bt.tumblr").on("click", function(e) {
        e.preventDefault(), redirectTo("tumblr")
    }), $("#pop-follow #img-shop").on("click", function(e) {
        e.preventDefault(), redirectTo("shop-all")
    }), $("#pop-credit #bt-feedback").on("click", function(e) {
        e.preventDefault(), preventAction(sendFeedback)
    }), $("#pop-credit #bt-rating").on("click", function(e) {
        e.preventDefault();
        var t = isIOS || appDesktop && isOSX ? build.getInfo().urlRate : build.getInfo().url;
        preventAction(function() {
            openURL(t)
        })
    }), $("#pop-credit #bt-faq").on("click", function(e) {
        e.preventDefault(), redirectTo("faq")
    }), $("#pop-credit #bt-privacy").on("click", function(e) {
        e.preventDefault(), showPP()
    }), appBrowserExpo && $("#pop-credit .container").append("www.incredibox.com")
}

function showPP(e) {}

function hidePP() {}

function refusePP() {}

function acceptPP(e) {}

function dialogGetApp(e) {
    notnull(e) && e.preventDefault(), appBrowserDemo ? popupGetApp() : appBrowser && isIframe ? window.top.appEvent("popupGetApp") : boxDialog.open("To access this feature you have to download the Incredibox app. Let's go? &#128273;", "&#128274; Locked", [STR("bt.sure"), STR("bt.later")], [], !0)
}

function popupGetApp(e) {
    var t = !0 === e ? "action-back" : "action",
        o = "<div class='bt bt-long' id='bt-getapp'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-download'></use></svg><div class='txt'>Get app</div></div><div class='hitzone'></div></div>",
        i = "store";
    o = isIOS ? "<div class='bt-store' id='bt-getapp'><div class='bck appstore'></div></div>" : o, i = isIOS ? "appstore" : i, o = isAndroid ? "<div class='bt-store' id='bt-getapp'><div class='bck playstore'></div></div>" : o, i = isAndroid ? "playstore" : i, boxPopup.open({
        name: "get-full-app",
        icntype: t,
        content: `\n\t\t\t<div class='title'>Feature locked</div>\n\t\t\t<div class='text'>\n\t\t\t\tWant to access all app's features?<br>\n\t\t\t\tEasy, just download Incredibox!\n\t\t\t\t${o}\n\t\t\t\t<div class='mini'>No ads, many musical style, record, share, download your mixes... and many more &#129321;</div>\n\t\t\t</div>`,
        onBoxOpenEnd: function() {
            !0 === e ? boxPopup.$icon.on(evtClick, popupRecok) : boxPopup.$icon.on(evtClick, boxPopup.close), boxPopup.$popup.find("#bt-getapp").on("click", function(e) {
                e.preventDefault(), redirectTo(i)
            })
        },
        onBoxCloseStart: function() {
            boxPopup.$icon.off(), boxPopup.$popup.find("#bt-getapp").off()
        }
    })
}

function popupInfo() {
    deleteFocus(), boxInfo.open({
        static: !0,
        bckclose: !0,
        name: "popup-info",
        onBoxOpenEnd: function() {
            createFocus("popup-info")
        },
        onBoxCloseStart: function() {
            deleteFocus(), focusHistory = []
        },
        onBoxCloseEnd: function() {
            boxInfo.$slide.reinit()
        },
        onCloseComplete: function() {
            createFocus(pageApp ? "home" : "index-select")
        }
    })
}

function popupParam() {
    deleteFocus(), boxParam.open({
        static: !0,
        bckclose: !0,
        name: "popup-param",
        onBoxOpenEnd: function() {
            createFocus("popup-param")
        },
        onBoxCloseStart: function() {
            deleteFocus(), focusHistory = []
        },
        onCloseComplete: function() {
            createFocus(pageApp ? "home" : "index-select")
        }
    })
}

function popupSwitch() {
    deleteFocus(), boxSwitch.open({
        static: !0,
        bckclose: !0,
        name: "popup-switch",
        onBoxOpenEnd: function() {
            createFocus("popup-switch")
        },
        onBoxCloseStart: function() {
            deleteFocus(), focusHistory = []
        },
        onCloseComplete: function() {
            createFocus("home")
        }
    })
}

function popupAlbum() {
    deleteFocus(), boxAlbum.open({
        static: !0,
        bckclose: !0,
        name: "popup-album",
        onBoxOpenEnd: function() {
            createFocus("popup-album")
        },
        onBoxCloseStart: function() {
            deleteFocus(), focusHistory = []
        },
        onCloseComplete: function() {
            createFocus("home")
        }
    }), saveGA("popup", "album", "open popup album")
}

function popupTutoDrag() {
    boxPopup.open({
        name: "drag-and-drop",
        icntype: "info",
        bcksize: "mini",
        bodyclose: !0,
        content: `\n\t\t\t<div class='title'>${STR("pop.dragDropTitle")}</div>\n\t\t\t<div class='text'>${STR("txt.tuto1")}</div>`,
        onBoxCloseEnd: function() {
            storage.setItem("popupTutoDrag", "viewed")
        }
    })
}

function popupDrag() {
    boxPopup.open({
        name: "drag-and-drop",
        icntype: "info",
        bcksize: "mini",
        bodyclose: !0,
        content: `\n\t\t\t<div class='title'>${STR("pop.dragDropTitle")}</div>\n\t\t\t<div class='text'>${STR("pop.dragDropText")}</div>`
    })
}

function popupShort() {
    boxPopup.open({
        name: "too-short",
        icntype: "info",
        bcksize: "mini",
        bodyclose: !0,
        content: `\n\t\t\t<div class='title'>${STR("pop.toShortTitle")}</div>\n\t\t\t<div class='text'>${STR("pop.toShortText").split("%{minimum_time}").join(app.recmintime)}</div>`
    })
}

function popupBonusPlaying() {
    boxPopup.open({
        name: "bonus-playing",
        icntype: "info",
        bcksize: "mini",
        bodyclose: !0,
        content: `\n\t\t\t<div class='title'>${STR("pop.bonusPlayingTitle")}</div>\n\t\t\t<div class='text'>${STR("pop.bonusPlayingText")}</div>`
    })
}

function popupFindPreviousBonus() {
    boxPopup.open({
        name: "find-previous-bonus",
        icntype: "info",
        bcksize: "mini",
        bodyclose: !0,
        content: `\n\t\t\t<div class='title'>${STR("pop.bonusFindPreviousTitle")}</div>\n\t\t\t<div class='text'>${STR("pop.bonusFindPreviousText")}</div>`
    })
}

function popupBonusUnlocked(e) {
    if (!modeReplay && !modeRandom || e) {
        var t = "v" + appVersion + "-popup-bonus-unlock";
        (isnull(storage.getItem(t)) || e) && (storage.setItem(t, "ok"), boxPopup.open({
            name: "bonus-unlocked",
            bcksize: "middle",
            content: function() {
                var e = `\n\t\t\t\t\t\t<div class='popimg'></div>\n\t\t\t\t\t\t<div class='title'>${STR("pop.bonusUnlockTitle")}</div>\n\t\t\t\t\t\t<div class='text'>${STR("pop.bonusUnlockText")}</div>`;
                return isMouseDevice && (e += `\n\t\t\t\t\t\t\t<div class='content'>\n\t\t\t\t\t\t\t\t<div class='bt-mini light'><div class='txt'>${STR("bt.gotit")}</div><div class='hitzone'></div></div>\n\t\t\t\t\t\t\t</div>`), e
            },
            onBoxOpenStart: function() {
                boxPopup.$popup.addClass("pop-bonus-unlock"), boxPopup.$popup.find(".pop").append("<div id='pointe'></div>"), calcPointePosX(1)
            },
            onBoxOpenEnd: function() {
                isMouseDevice ? boxPopup.$popup.find(".bt-mini").on(evtClick, function(e) {
                    e.preventDefault(), boxPopup.close()
                }) : $body.on(evtClick, boxPopup.clickBck)
            },
            onBoxCloseStart: function() {
                isMouseDevice ? boxPopup.$popup.find(".bt-mini").off() : $body.off(evtClick, boxPopup.clickBck)
            },
            onBoxCloseEnd: function() {
                boxPopup.$popup.removeClass("pop-bonus-unlock"), boxPopup.$popup.find("#pointe").remove()
            }
        }))
    }
}

function popupBonusFindNext(e) {
    if (!modeReplay && !modeRandom || e) {
        var t = "v" + appVersion + "-popup-bonus-next";
        (isnull(storage.getItem(t)) || e) && (storage.setItem(t, "ok"), isToolbarOpen && closeTool(), boxPopup.open({
            name: "find-next-bonus",
            bcksize: "middle",
            content: function() {
                var e = `\n\t\t\t\t\t\t<div class='title'>${STR("pop.bonusFindNextTitle")}</div>\n\t\t\t\t\t\t<div class='text'>${STR("pop.bonusFindNextText")}</div>`;
                return isMouseDevice && (e += `\n\t\t\t\t\t\t<div class='content'>\n\t\t\t\t\t\t\t<div class='bt-mini light'><div class='txt'>${STR("bt.gotit")}</div><div class='hitzone'></div></div>\n\t\t\t\t\t\t</div>`), e
            },
            onBoxOpenStart: function() {
                boxPopup.$popup.addClass("pop-bonus-unlock"), boxPopup.$popup.find(".pop").append("<div id='pointe'></div>"), calcPointePosX(2)
            },
            onBoxOpenEnd: function() {
                isMouseDevice ? boxPopup.$popup.find(".bt-mini").on(evtClick, function(e) {
                    e.preventDefault(), boxPopup.close()
                }) : $body.on(evtClick, boxPopup.clickBck)
            },
            onBoxCloseStart: function() {
                isMouseDevice ? boxPopup.$popup.find(".bt-mini").off() : $body.off(evtClick, boxPopup.clickBck)
            },
            onBoxCloseEnd: function() {
                boxPopup.$popup.removeClass("pop-bonus-unlock"), boxPopup.$popup.find("#pointe").remove()
            }
        }))
    }
}

function calcPointePosX(e) {
    var t = $("#bt-bonus-" + e).offset().left - $("#box-bt2").offset().left + $("#app-incredibox").offset().left,
        o = $("#pop-popup .pop").offset().left,
        i = $("body").hasClass("ultrawide") ? .8 : 1,
        n = (t - o) / stageScale / popupScale;
    n += 86 * i * stageScale / 2 - 32 * stageScale * popupScale / 2, $("#pointe").css({
        transform: "translateX(" + Math.floor(n) + "px)"
    })
}

function popupRecok() {
    checkTimeRecok = getTime(), deleteFocus();
    var e = `\n\t\t<div class='bt bt-haut retry'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-reset'></use></svg></div><div class='txt'>${STR("bt.retry")}</div><div class='hitzone'></div></div>\n\t\t<div class='bt bt-haut replay'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-eye'></use></svg></div><div class='txt'>${STR("bt.replay")}</div><div class='hitzone'></div></div>\n\t\t<div class='bt bt-haut save'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-edit'></use></svg></div><div class='txt'>${STR("bt.save")}</div><div class='hitzone'></div></div>\n\t`;
    appBrowserDemo && (e = `\n\t\t\t<div class='bt bt-haut replay'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-eye'></use></svg></div><div class='txt'>${STR("bt.replay")}</div><div class='hitzone'></div></div>\n\t\t\t<div class='bt bt-haut share'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-share'></use></svg></div><div class='txt'>${STR("bt.share")}</div><div class='hitzone'></div></div>\n\t\t\t<div class='bt bt-haut download'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-download'></use></svg></div><div class='txt'>Get MP3</div><div class='hitzone'></div></div>\n\t\t`), boxPopup.open({
        name: "record-complete",
        icntype: "action",
        content: `\n\t\t\t<div class='title'>${STR("pop.recOkTitle")}</div>\n\t\t\t<div class='content'>\n\t\t\t\t<div class='box-bt-haut'>\n\t\t\t\t\t${e}\n\t\t\t\t</div>\t\n\t\t\t</div>`,
        onBoxOpenEnd: function() {
            boxPopup.$icon.on(evtClick, boxPopup.close), boxPopup.$popup.find(".bt.replay").on(evtClick, function(e) {
                e.preventDefault(), preventAction(clickReplayMix)
            }), appBrowserDemo ? (boxPopup.$popup.find(".bt.share").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    popupGetApp(!0)
                })
            }), boxPopup.$popup.find(".bt.download").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    popupGetApp(!0)
                })
            })) : (boxPopup.$popup.find(".bt.retry").on(evtClick, function(e) {
                e.preventDefault(), preventAction(clickRetryMix)
            }), boxPopup.$popup.find(".bt.save").on(evtClick, function(e) {
                e.preventDefault(), preventAction(clickSaveMix)
            })), createFocus("popup-record-complete"), unlock()
        },
        onBoxCloseStart: function() {
            deleteFocus(), boxPopup.$icon.off(), boxPopup.$popup.find(".bt").off()
        },
        onBoxCloseEnd: function() {
            boxPopup.$icon.off(), boxPopup.$popup.find(".bt").off()
        },
        onCloseComplete: function() {
            removeInArray("popup-record-complete", focusHistory), modeReplay || createFocus("toolbar")
        }
    })
}
var checkTimeRecok = 0;

function canIclickRecok() {
    return getTime() - checkTimeRecok > 600
}

function clickRetryMix() {
    canIclickRecok() && (appBrowserDemo && withAdBreak && callAd("next", "retry-mix"), boxPopup.close(), TweenMax.delayedCall(.2, startRecordMode))
}

function clickReplayMix() {
    canIclickRecok() && (boxPopup.close(), startReplayMode(), saveGA("mix", "replay"))
}

function clickSaveMix() {
    popupForm()
}

function popupForm() {
    boxPopup.open({
        name: "save-form",
        icntype: "action-back",
        content: function() {
            var e = `\n\t\t\t<div class='title'>${STR("pop.formTitle")}</div>\n\t\t\t<div class='content'>\n\t\t\t\t<form action='javascript:clickBtValidFormMix()' method='post' target='_self' autocomplete='off'>\n\t\t\t\t\t<div class='formzone'>\n\t\t\t\t\t\t<div class='formline ic-name'><div class='icn-box'><svg class='icn-svg'><use xlink:href='#ic-user-mini'></use></svg></div><input type='text' id='input-name' placeholder='${STR("txt.inputName")}' value='${user.djname}' maxlength='26' autocorrect='off' spellcheck='false'/></div>\n\t\t\t\t\t\t<div class='formline ic-title'><div class='icn-box'><svg class='icn-svg'><use xlink:href='#ic-note-mini'></use></svg></div><input type='text' id='input-title' placeholder='${STR("txt.inputTitle")}' value='' maxlength='26' autocorrect='off' spellcheck='false'/></div>\n\t\t\t\t\t\t<div class='formline ic-dedi'><div class='icn-box'><svg class='icn-svg'><use xlink:href='#ic-like-mini'></use></svg></div><input type='text' id='input-dedi' placeholder='${STR("txt.dedicatedTo").split("%{name}").join("...")}' value='' maxlength='26' autocorrect='off' spellcheck='false'/></div>`;
            return appBrowser || (e += `<div class='formline ic-private'>\n\t\t\t\t\t\t\t<div class='icn-box'><svg class='icn-svg'><use xlink:href='#ic-view-mini'></use></svg></div>\n\t\t\t\t\t\t\t<div class='bt-onofftext active'>\n\t\t\t\t\t\t\t\t<div class='slider'></div>\n\t\t\t\t\t\t\t\t<div class='txtbox'>\n\t\t\t\t\t\t\t\t\t<div class='label'>${STR("bt.private")}</div>\n\t\t\t\t\t\t\t\t\t<div class='label'>${STR("bt.public")}</div>\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t</div>`), e += "</div>\n\t\t\t\t\t<div class='btzone'>\n\t\t\t\t\t\t<div class='bt valid'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-check'></use></svg></div><div class='hitzone'></div></div>\n\t\t\t\t\t</div>\n\t\t\t\t\t<input type='submit' style='visibility:hidden;position:absolute'/><div class='clear'></div>\n\t\t\t\t</form>\n\t\t\t</div>", appBrowser && !appBrowserExpo && (e += "<div style='margin-top: 25px; color:#777; font-size:14px; line-height:20px;'>These infos are public and will appear in the Incredibox's Playlist.<br>Don't use your real name, choose a nice pseudo instead &#128521;</div>"), e
        },
        onBoxOpenEnd: function() {
            if (createFocus("popup-save-form"), boxPopup.$icon.on(evtClick, popupRecok), boxPopup.$popup.find(".bt.valid").on(evtClick, function(e) {
                    e.preventDefault(), preventAction(clickBtValidFormMix)
                }), appBrowser || appDesktop || (boxPopup.$popup.find(".formline:not(.ic-private)").on(evtPress, function(e) {
                    boxPopup.$popup.find(".formline").off(evtPress), Spinner.add($(this).find(".icn-box"))
                }), boxPopup.$popup.find(".formline input").on("focus", function() {
                    boxPopup.$popup.find(".formline input").off("focus"), Spinner.reset()
                })), !appBrowser && !isSafeMode()) {
                var e = boxPopup.$popup.find(".formline.ic-private .bt-onofftext"),
                    t = boxPopup.$popup.find(".formline.ic-private svg use");
                e.on(evtClick, function(o) {
                    o.preventDefault(), e.hasClass("active") ? (e.removeClass("active"), t.attr("xlink:href", "#ic-lock-mini")) : (e.addClass("active"), t.attr("xlink:href", "#ic-view-mini"))
                })
            }
        },
        onBoxCloseStart: function() {
            removeInArray("popup-save-form", focusHistory), deleteFocus(), boxPopup.$icon.off(), boxPopup.$popup.find(".bt").off(), boxPopup.$popup.find(".bt-onofftext").off(), boxPopup.$popup.find("input").off(), appBrowser || appDesktop || (boxPopup.$popup.find(".formline").off(), boxPopup.$popup.find(".formline input").off()), appMobile && blurAll()
        }
    })
}
var translateObj, formProcessing = !1;

function clickBtValidFormMix() {
    if (boxPopup.$popup.find(".formzone .formline input").hasClass("focused")) return !1;
    if (launchImmersiveMode(), !formProcessing) {
        formProcessing = !0, lock();
        var e = appBrowserExpo || isSafeMode() || !boxPopup.$popup.find(".formzone .bt-onofftext").hasClass("active"),
            t = boxPopup.$popup.find(".formzone #input-name"),
            o = boxPopup.$popup.find(".formzone #input-title"),
            i = boxPopup.$popup.find(".formzone #input-dedi"),
            n = t.val().substr(0, 26),
            s = o.val().substr(0, 26),
            a = i.val().substr(0, 26),
            u = trim(recordMix.getXML()),
            r = getUniqLink(),
            c = getDateNow(),
            p = app.version,
            l = trustAppMobile ? device.platform.toLowerCase() : machine.osName,
            d = trustAppMobile ? device.version : machine.osVersion,
            f = trustAppMobile ? device.model : machine.deviceModel,
            h = build.getInfo().version,
            m = machine.uuid;
        machine.browserUserAgent;
        n = cleanInputText(n, t), s = cleanInputText(s, o), a = cleanInputText(a, i);
        var v = regexList.classic,
            b = n.split(" ").join(""),
            g = s.split(" ").join(""),
            x = a.split(" ").join("");
        if (v.test(b)) invalidField(t);
        else if (v.test(g)) invalidField(o);
        else if (v.test(x)) invalidField(i);
        else if ("" === b) invalidField(t);
        else if ("" === g) invalidField(o);
        else {
            deleteFocus(), boxPopup.$popup.find(".formzone input").blur();
            var D = {
                mymix: !0,
                online: !1,
                link: r,
                name: ucwords(n),
                title: ucwords(s),
                dedi: ucwords(a),
                mix: u,
                date: c,
                app: p,
                appcode: h,
                model: f,
                os: l,
                uuid: m,
                osversion: d,
                nbview: 0,
                nblike: 0,
                user: user,
                platform: target,
                lang_user: user.lang,
                lang_machine: machine.language,
                private: e ? 1 : 0
            };
            appBrowserExpo && (D.dedi = "Design Inspire");
            var C = boxPopup.$popup.find(".bt.valid");
            Spinner.add(C), recordMix.setData(D), localMixObject.saveMix(D), mixToShare = D, setUserInfo({
                djname: ucwords(n)
            }), delete XHRmemotime.mymix, saveGA("mix", "save_local"), hasNetwork ? appBrowser ? saveMixDB(D, function() {
                k(C)
            }, function() {
                boxDialog.open(STR("pop.noCoServerText"), STR("pop.noCoServerTitle"), [STR("bt.ok")]), Spinner.reset(), formProcessing = !1, unlock()
            }) : saveMixDB(D, function() {
                k(C)
            }) : appBrowser ? (Spinner.reset(), formProcessing = !1, unlock(), boxDialog.open(STR("pop.noNetworkText"), STR("pop.noNetworkTitle"), [STR("bt.ok")], [])) : k(C)
        }
    }

    function k(e) {
        TweenMax.delayedCall(1, function() {
            Spinner.reset(), popupMixSaved()
        })
    }
}

function invalidField(e) {
    e.addClass("invalid").one(animationEnd, function(e) {
        $(e.target).removeClass("invalid")
    }), formProcessing = !1, unlock()
}

function keyboardOpen(e) {
    TweenMax.set(boxPopup.$popup, {
        scrollTo: {
            y: 0
        }
    }), boxPopup.$popup.addClass("keyboardOpen");
    var t = boxPopup.$popup.find("#input-name"),
        o = e.keyboardHeight,
        i = (screenH - o) / 2,
        n = t.height() / 2;
    boxPopup.$popup.find(".formline input").each(function() {
        var e = $(this),
            t = Math.round(e.position().top - i + n) / stageScale;
        e.focus(function(e) {
            TweenMax.to(boxPopup.$popup, .4, {
                scrollTo: {
                    y: t
                },
                ease: Quint.easeInOut
            })
        })
    }), t.focus()
}

function keyboardClose() {
    TweenMax.to(boxPopup.$popup, .5, {
        scrollTo: {
            y: 0
        },
        ease: Quint.easeInOut,
        onComplete: function() {
            boxPopup.$popup.removeClass("keyboardOpen")
        }
    })
}

function blurAll() {
    notnull(document.activeElement) && document.activeElement.blur(), isAndroid && launchImmersiveMode()
}

function listenFocus() {
    var e = !1;
    isIOS && (document.addEventListener("focusin", function() {
        e = !0
    }), document.addEventListener("focusout", function() {
        e = !1, setTimeout(function() {
            e || window.scrollTo(0, 0)
        }, 250)
    }))
}

function popupConvertMix() {
    var e = $mixlist.hasClass("show") ? "action" : "action-back";
    boxPopup.open({
        name: "convert-mix",
        icntype: e,
        content: `\n\t\t\t<div class='title'>${STR("pop.convertMixTitle")}</div>\n\t\t\t<div class='text'>${STR("pop.convertMixText")}</div>\n\t\t\t<div class='content'>\n\t\t\t\t<div id='convert-loader-box' class='progress-box'><div class='scale'><div class='progress-bar'></div></div></div>\n\t\t\t\t<a class='bt bt-long download' id='bt-save-file'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-download'></use></svg><div class='txt'>${STR("bt.saveFile")}</div></div><div class='hitzone'></div></a>\n\t\t\t\t<div class='spinner-box spin'><svg class='icn-svg col-version'><use xlink:href='#ic-loader'></use></svg></div>\n\t\t\t</div>`,
        onBoxOpenEnd: function() {
            createFocus("popup-convert-mix"), boxPopup.$icon.on(evtClick, function() {
                "action" == e ? boxPopup.close() : popupMixSaved()
            }), notnull(mixToShare) && startConvert(contextAudio, mixToShare, boxPopup.$popup.find(".content"))
        },
        onBoxCloseStart: function() {
            removeInArray("popup-convert-mix", focusHistory), removeInArray("popup-convert-mix-ready", focusHistory), deleteFocus(), boxPopup.$icon.off(), stopConvert()
        }
    })
}

function popupMixSaved() {
    formProcessing = !1, boxPopup.open({
        name: "mix-saved",
        icntype: "action",
        content: function() {
            var e = STR(appBrowser ? "pop.shareTextBrowser" : "pop.shareText");
            e = 1 == mixToShare.private ? e.split("<br>")[0] : e, appBrowserExpo && (e = "Your mix has been saved.<br>Now you can share it!");
            var t = "";
            return (trustAppMobile || appBrowserExpo) && (t += `<div class='bt bt-haut link color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-link'></use></svg></div><div class='txt'>${STR("bt.link")}</div><div class='hitzone'></div></div>`), t += `<div class='bt bt-haut share color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-share'></use></svg></div><div class='txt'>${STR("bt.share")}</div><div class='hitzone'></div></div>`, isComputer && (t += `<div class='bt bt-haut download color hoverLocked'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-download'></use></svg></div><div class='txt'>${STR("bt.exportFile")}</div><div class='ic-locked'><svg class='icn-svg'><use xlink:href='#ic-lock'></use></svg></div><div class='hitzone'></div></div>`), t += `<div class='bt bt-haut mixlist color hoverLocked'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-mixlist'></use></svg></div><div class='txt'>${STR("bt.myMix")}</div><div class='ic-locked'><svg class='icn-svg'><use xlink:href='#ic-lock'></use></svg></div><div class='hitzone'></div></div>`, `\n\t\t\t\t<div class='title'>${STR("pop.shareTitle")}</div>\n\t\t\t\t<div class='text'>${e}</div>\n\t\t\t\t<div class='content'>\n\t\t\t\t\t<div class='box-bt-haut'>${t}</div>\n\t\t\t\t</div>`
        },
        onBoxOpenEnd: function() {
            createFocus("popup-mix-saved"), boxPopup.$icon.on(evtClick, boxPopup.close), (trustAppMobile || appBrowserExpo) && boxPopup.$popup.find(".bt.link").on(evtClick, function(e) {
                e.preventDefault();
                var t = $(this);
                preventAction(function() {
                    clickBtCopyLink(t)
                })
            }), boxPopup.$popup.find(".bt.share").on(evtClick, function(e) {
                e.preventDefault();
                var t = $(this);
                preventAction(function() {
                    clickBtShareGlobal(t)
                })
            }), appBrowser ? boxPopup.$popup.find(".bt.mixlist").on(evtClick, dialogGetApp) : boxPopup.$popup.find(".bt.mixlist").on(evtClick, function(e) {
                e.preventDefault(), preventAction(clickBtGoToMixlist)
            }), boxPopup.$popup.find(".bt.download").on(evtClick, function(e) {
                e.preventDefault(), appBrowser ? dialogGetApp() : preventAction(function() {
                    socialSharingOk("download")
                })
            }), unlock()
        },
        onBoxCloseStart: function() {
            deleteFocus(), boxPopup.$icon.off(), boxPopup.$popup.find(".bt").off()
        },
        onCloseComplete: function() {
            onGame && createFocus("toolbar"), mixToShare = {}
        }
    })
}

function clickBtShareGlobal(e) {
    socialSharing("global", e || $(this))
}

function clickBtShareMail(e) {
    socialSharing("mail", e || $(this))
}

function clickBtShareFacebook(e) {
    socialSharing("facebook", e || $(this))
}

function clickBtShareTwitter(e) {
    socialSharing("twitter", e || $(this))
}

function clickBtShareLink(e) {
    socialSharing("link", e || $(this))
}

function clickBtCopyLink(e) {
    socialSharing("clipboard", e || $(this))
}

function clickBtGoToMixlist() {
    backToHome(function() {
        openPlaylist("mymix", !0, !0)
    })
}

function popupGlobalShare() {
    var e = $mixlist.isOpen() ? "action" : "action-back";
    boxPopup.open({
        name: "global-share",
        icntype: e,
        bcksize: isMixReplay ? "mini" : "",
        content: `\n\t\t\t<div class='title'>${STR("bt.share")}</div>\n\t\t\t<div class='content'>\n\t\t\t\t<div class='box-bt-haut'>\n\t\t\t\t\t<div class='bt bt-haut mail color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-mail'></use></svg></div><div class='txt'>Mail</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt bt-haut facebook color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-facebook'></use></svg></div><div class='txt'>Facebook</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt bt-haut twitter color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-twitter'></use></svg></div><div class='txt'>Twitter</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt bt-haut link color'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-link'></use></svg></div><div class='txt'>${STR("bt.link")}</div><div class='hitzone'></div></div>\n\t\t\t\t</div>\n\t\t\t</div>`,
        onBoxOpenEnd: function() {
            createFocus("popup-global-share"), boxPopup.$popup.find(".bt.mail").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    socialSharingOk("mail")
                })
            }), boxPopup.$popup.find(".bt.facebook").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    socialSharingOk("facebook")
                })
            }), boxPopup.$popup.find(".bt.twitter").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    socialSharingOk("twitter")
                })
            }), boxPopup.$popup.find(".bt.link").on(evtClick, function(e) {
                e.preventDefault(), preventAction(function() {
                    socialSharingOk("clipboard")
                })
            }), "action" == e ? boxPopup.$popup.find("span.icon").on(evtClick, boxPopup.close) : boxPopup.$popup.find("span.icon").on(evtClick, popupMixSaved), unlock()
        },
        onBoxCloseStart: function() {
            removeInArray("popup-global-share", focusHistory), deleteFocus(), boxPopup.$popup.find("span.icon").off(), boxPopup.$popup.find(".bt").off()
        },
        onBoxCloseEnd: function() {
            createFocus(focusHistory[focusHistory.length - 1]), Spinner.reset()
        }
    })
}

function popupEmail() {
    boxPopup.open({
        name: "email-form",
        icntype: "action-back",
        bcksize: isMixReplay ? "mini" : "",
        content: `\n\t\t\t<div class='title'>${STR("pop.formEmailTitle")}</div>\n\t\t\t<div class='content'>\n\t\t\t\t<form action='javascript:clickBtValidFormEmail()' method='post' target='_self' autocomplete='off'>\n\t\t\t\t\t<div class='formzone'>\n\t\t\t\t \t\t<div class="formline ic-name"><div class="icn-box"><svg class="icn-svg"><use xlink:href="#ic-user-mini"></use></svg></div><input type="text" id="input-name" placeholder="${STR("txt.inputEmailSender")}" value="${notnull(user.djname)?user.djname:""}" maxlength="26" autocorrect="off" spellcheck="false"/></div>\n\t\t\t\t\t\t<div class='formline ic-email'><div class='icn-box'><svg class='icn-svg'><use xlink:href='#ic-at-mini'></use></svg></div><input type='email' id='input-email' placeholder='${STR("txt.inputEmailRecipient")}' value='' maxlength='254' autocorrect='off' spellcheck='false'/></div>\n\t\t\t\t\t</div>\n\t\t\t\t\t<div class='btzone'>\n\t\t\t\t\t\t<div class='bt valid'><div class='bck'><svg class='icn-svg'><use xlink:href='#ic-check'></use></svg></div><div class='hitzone'></div></div>\n\t\t\t\t\t</div>\n\t\t\t\t\t<input type='submit' style='visibility:hidden;position:absolute'/><div class='clear'></div>\n\t\t\t\t</form>\n\t\t\t</div>`,
        onBoxOpenEnd: function() {
            createFocus("popup-email-form"), boxPopup.$icon.on(evtClick, popupGlobalShare), boxPopup.$popup.find(".bt.valid").on(evtClick, function(e) {
                e.preventDefault(), preventAction(clickBtValidFormEmail)
            })
        },
        onBoxCloseStart: function() {
            removeInArray("popup-email-form", focusHistory), deleteFocus(), boxPopup.$icon.off(), blurAll()
        },
        onBoxCloseEnd: function() {
            formProcessing = !1
        }
    })
}

function clickBtValidFormEmail() {
    if (boxPopup.$popup.find(".formzone .formline input").hasClass("focused")) return !1;
    var e = domainOnline + "mix/" + mixToShare.link,
        t = mixToShare.title,
        o = mixToShare.name;
    if (!formProcessing) {
        formProcessing = !0, lock();
        var i = boxPopup.$popup.find(".formzone #input-name"),
            n = boxPopup.$popup.find(".formzone #input-email"),
            s = i.val().substr(0, 26),
            a = n.val().substr(0, 254);
        s = cleanInputText(s, i), a = trim(a);
        var u = s.split(" ").join(""),
            r = a.toLowerCase();
        if ("" == u || regexList.classic.test(u)) invalidField(i);
        else if ("" != r && regexList.email.test(r)) {
            boxPopup.$popup.find(".formzone input").blur(), blurAll();
            var c = boxPopup.$popup.find(".bt.valid");
            if (Spinner.add(c), hasNetwork) xhr("POST", domainOnline + "ph2/send-mail.php", {
                expediteur: s,
                email: a,
                type: "composition",
                djName: o,
                title: t,
                link: e,
                src: appDesktop ? "electron" : "browser"
            }, function(e) {
                "success" == e.state ? (Spinner.reset(), c.addClass("success"), TweenMax.delayedCall(.6, function() {
                    unlock(), popupGlobalShare()
                })) : (boxDialog.open(STR("pop.shareErrorText"), STR("pop.shareErrorTitle"), [STR("bt.ok")], [function() {
                    Spinner.reset()
                }]), formProcessing = !1, unlock())
            }, function(e) {
                formProcessing = !1, boxDialog.open(STR("pop.shareErrorText"), STR("pop.shareErrorTitle"), [STR("bt.ok")], [function() {
                    Spinner.reset()
                }]), unlock()
            });
            else formProcessing = !1, boxDialog.open(STR("pop.noNetworkText"), STR("pop.noNetworkTitle"), [STR("bt.ok")], [function() {
                Spinner.reset()
            }]), unlock()
        } else invalidField(n)
    }
}

function saveMixDB(e, t, o) {
    var i = o || t;
    $.ajax({
        type: "POST",
        url: domainOnline + "ph2/save-mix-db.php",
        data: e,
        dataType: "json",
        crossdomain: !0,
        success: function(o) {
            "success" == o.state ? (e.online = !0, e.link = o.link, e.id = o.id, localMixObject.saveMix(e), delete XHRmemotime.latest, t(), saveGA("mix", "save_db")) : (i(), saveGA("mix", "save_db_failed"))
        },
        error: function(e) {
            i(), saveGA("mix", "save_db_error")
        }
    })
}

function socialSharing(e, t) {
    if (lock(), deleteFocus(), Spinner.add(t), hasNetwork) !0 === mixToShare.mymix ? mixToShare.online ? socialSharingOk(e) : saveMixDB(mixToShare, function() {
        socialSharingOk(e), $(".boxline .line[data-key='mix-" + mixToShare.link + "']").removeClass("isoffline")
    }, function() {
        boxDialog.open(STR("pop.noCoServerText"), STR("pop.noCoServerTitle"), [STR("bt.ok")], []), Spinner.reset(), unlock()
    }) : socialSharingOk(e);
    else {
        var o = $mixlist.hasClass("show") ? STR("pop.noCoShareText") : STR("pop.noCoShareText") + " " + STR("pop.noCoShareText2");
        boxDialog.open(o, STR("pop.noNetworkTitle"), [STR("bt.ok")], [function() {
            Spinner.reset()
        }]), unlock()
    }
}

function socialSharingOk(e, t) {
    var o = mixToShare.name,
        i = mixToShare.title,
        n = (mixToShare.dedi, mixToShare.date, domainOnline + "mix/" + mixToShare.link),
        s = domainOnline + "img/share/visu-share-v" + app.version + "@2x.png",
        a = domainOnline + "img/share/visu-share-v" + app.version + ".png",
        u = STR("pop.shareSubject"),
        r = STR("pop.sharePresentMix").split("%{name}").join(o).split("%{title}").join(i),
        c = STR("pop.shareTextLike"),
        p = STR("pop.shareTextBeCool"),
        l = r + "\n" + n + "\n\n" + c + "\n\n---------------------------\n\nApp Store: " + build.ios.url + "\nPlay Store: " + build.and.url + "\nAmazon Store: " + build.ama.url,
        d = "#incredibox",
        f = p + " #incredibox",
        h = r + " " + p + " #incredibox";
    if (appBrowserExpo && (d += " #DesignInspire #hktdc", f += " #DesignInspire #hktdc", h += " #DesignInspire #hktdc"), "global" != e && Spinner.reset(), "download" == e) {
        if (appDesktop && hasWorker) popupConvertMix();
        else openURL("https:www.incredibox.com/file/" + mixToShare.link);
        unlock(), saveGA("mix", "export_mp3")
    } else saveGA("mix", "share", e);
    switch (e) {
        case "mail":
            trustAppMobile && window.plugins.socialsharing.shareViaEmail(l, u, null, null, null, [a], v, b), isComputer && popupEmail();
            break;
        case "facebook":
            trustAppMobile && window.plugins.socialsharing.shareViaFacebook(d, s, n, v, b), appBrowser && windowPopup("https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(n), 560, 350, !0), appDesktop && openURL("https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(n));
            break;
        case "twitter":
            trustAppMobile && window.plugins.socialsharing.shareViaTwitter(f, s, n, v, b), appBrowser && windowPopup("https://twitter.com/intent/tweet?text=" + encodeURIComponent(f) + "&url=" + encodeURIComponent(n) + "&hashtags=musicApp,beatbox,pumpItUp&related=incredibox_%3AThe%20Incredibox%20official%20Twitter%20account!", 560, 350, !0), appDesktop && openURL("https://twitter.com/intent/tweet?text=" + encodeURIComponent(f) + "&url=" + encodeURIComponent(n) + "&hashtags=musicApp,beatbox,pumpItUp&related=incredibox_%3AThe%20Incredibox%20official%20Twitter%20account!");
            break;
        case "clipboard":
            appDesktop ? copyToClipboardElectron(n, m) : trustAppMobile ? cordova.plugins.clipboard.copy(n, m, function() {
                boxDialog.open(STR("pop.shareErrorText"), STR("pop.shareErrorTitle"), [STR("bt.ok")], []), b()
            }) : (appBrowser || isComputer) && (copyToClipboard(n), m(n));
            break;
        case "global":
            trustAppMobile ? (window.plugins.socialsharing.share(h, u, s, n, v, b), (isiPad || isiPadPro) && (window.plugins.socialsharing.iPadPopupCoordinates = function() {
                var e = t[0].getBoundingClientRect();
                return e.left + "," + e.top + "," + e.width + "," + e.height
            })) : isComputer && (popupGlobalShare(), Spinner.reset())
    }

    function m(e) {
        if (appBrowser) {
            var t = "<div class='selectarea'>" + e.replace("https://www.", "") + "</div>";
            boxDialog.open(t + "Link copied to your clipboard!", "&#128279; Mix link", [STR("bt.ok")], [])
        } else boxDialog.open(STR("pop.shareClipboard"), STR("pop.infoTitle"), [STR("bt.ok")], []);
        v(), unlock()
    }

    function v() {
        Spinner.reset(), unlock()
    }

    function b() {
        Spinner.reset(), unlock()
    }
}

function copyToClipboardElectron(e, t) {
    _electron.clipboard.writeText(e), t()
}

function sendFeedback() {
    saveGA("share", "click_feedback");
    var e = "feedback@incredibox.com",
        t = "App feedback (" + machine.deviceModel + ")",
        o = "<br><br>----------";
    if (o += "<br>From : " + ucwords(target) + " - " + ("undefined" != typeof app ? app.name + " - v" + app.version : "index"), o += "<br>Version : " + build.getInfo().version, o += "<br>DJ Name : " + user.djname, o += "<br>Guid : " + user.guid, o += "<br>Lang : " + user.lang + " (" + currentLanguage + ")", o += "<br>Machine : " + machine.uuid + (trustAppMobile ? " - " + device.serial : ""), o += "<br>Device : " + machine.deviceModel + " - " + screen.width + "x" + screen.height + " - " + (window.devicePixelRatio || 1), o += "<br>System : " + machine.osName + " - " + machine.osVersion + (appDesktop ? " - " + _electron.os.arch() : ""), o += "<br>WV : " + machine.browserFullVersion, o += "<br>Anime - Asset  : " + (isAnimeHD ? "HD" : "LD") + " - " + (isAssetHD ? "HD" : "LD"), o += "<br>Evt : " + evtClick, o += "<br>SpRate : " + (notnull(contextAudio) ? contextAudio.sampleRate + (notnull(contextAudio.baseLatency) ? " - " + contextAudio.baseLatency : "") : ""), trustAppMobile) o += "<br>----------", o += "<br>App.device : " + device.modelname + " - " + device.manufacturer, o += "<br>App.system : " + device.platform + " - " + device.version, window.plugins.socialsharing.shareViaEmail("<br><br><br><i>" + o + "</i>", t, e, null, null, []);
    else {
        o = o.replace(/<br>/g, "\r\n");
        var i = "mailto:" + e + "?subject=" + t + "&body=" + encodeURIComponent(o);
        appDesktop ? _electron.shell.openExternal(i) : window.location.href = i
    }
}
var systemLanguage, defaultLanguage = appSQ ? "fr" : appCN ? "zh-CN" : "en-US",
    currentLanguage = defaultLanguage,
    languageListe = {
        "en-US": "English",
        fr: "Français",
        es: "Español",
        "pt-BR": "Português",
        it: "Italiano",
        de: "Deutsch",
        no: "Norsk",
        pl: "Polski",
        ru: "Русский",
        ar: "العربية",
        tr: "Türkçe",
        ko: "한국어",
        ja: "日本語",
        "zh-CN": "简体中文",
        "zh-TW": "繁體中文",
        "hi-IN": "हिंदी",
        "bn-IN": "বাংলা",
        "ta-IN": "தமிழ்",
        "te-IN": "తెలుగు",
        th: "ไทย",
        vi: "Tiếng Việt",
        id: "Indonesia",
        ms: "Melayu"
    };

function checkLanguageCode(e) {
    var t = e.toLowerCase();
    return t.indexOf("en-") > -1 ? "en-US" : t.indexOf("pt-") > -1 ? "pt-BR" : t.indexOf("fr-") > -1 ? "fr" : t.indexOf("es-") > -1 ? "es" : t.indexOf("it-") > -1 ? "it" : t.indexOf("de-") > -1 ? "de" : "zh-hant" == t || "zh-hk" == t || "zh-tw" == t ? "zh-TW" : "zh-hans" == t || "zh-cn" == t ? "zh-CN" : "en" == t ? "en-US" : "pt" == t ? "pt-BR" : "zh" == t ? "zh-CN" : "hi" == t ? "hi-IN" : "bn" == t ? "bn-IN" : "ta" == t ? "ta-IN" : "te" == t ? "te-IN" : "nb" == t || "nn" == t ? "no" : e
}

function createBtLanguage() {
    var e = "";
    for (var t in languageListe) {
        e += '<div class="bt-mini soft" id="bt-lang-' + t + '"><div class="txt">' + languageListe[t] + '</div><div class="hitzone"></div></div>'
    }
    $("#pop-language .box-lang").append(e)
}

function debugLanguage() {
    document.addEventListener("keyup", function(e) {
        var t = e.key.toLowerCase();
        if ("a" == t || "z" == t) {
            var o = Object.keys(languageListe).indexOf(currentLanguage);
            "a" == t ? o-- : "z" == t && o++;
            var i = Object.keys(languageListe);
            o > i.length - 1 && (o = 0), o < 0 && (o = i.length - 1), loadLanguage(changeDomTxt, i[o])
        }
    })
}

function changeDomTxt() {
    var e = translateObj.trad;
    if ($("#pop-info .tab#tab-tuto").html(e.bt.tuto), $("#pop-info .tuto1 .txt").html(e.txt.tuto1), $("#pop-info .tuto2 .txt").html(e.txt.tuto2), $("#pop-info .tuto3 .txt").html(e.txt.tuto3), $("#pop-info .tuto4 .txt").html(e.txt.tuto4), $("#pop-info .tuto5 .txt").html(e.txt.tuto5), $("#pop-info .tab#tab-credit").html(e.bt.credit), $("#pop-info #pop-credit #copy").html(e.txt.copyright), $("#pop-info #pop-credit #team").html("<div class='box-team'>Allan Durand<br>Romain Delambily<br>Incredible Polo</div><div class='box-team'>" + e.txt.team + "</div>"), $("#pop-info #pop-credit .title").html(e.txt.stayTuned), $("#pop-info #pop-credit #bt-feedback .txt").html(e.bt.feedback), $("#pop-info #pop-credit #bt-rating .txt").html(e.bt.rate), $("#pop-info #pop-credit #bt-privacy .txt").html(e.bt.privacy), $("#pop-info .tab#tab-follow").html(e.bt.follow), $("#pop-info #pop-follow .title#git").html(e.bt.git), $("#pop-info #pop-follow .title#shop").html(e.txt.visitShop), $("#pop-param .tab#tab-language").html(e.txt.language), $("#pop-param .tab#tab-setting").html(e.bt.param), $("#pop-param #pop-setting #param-dark .label").html(e.txt.modeDark), $("#pop-param #pop-setting #param-safe .label").html(e.txt.modeSafe), $("#pop-param #pop-setting #param-reset .label").html(e.txt.resetBonus), $("#pop-param #pop-setting #param-reset .bt-mini .txt").html(e.bt.reset), $("#pop-param #pop-setting #param-recover .label").html(e.txt.recoverAllMix), $("#pop-param #pop-setting #param-recover .bt-mini .txt").html(e.bt.recover), $("#pp-box #bt-ppaccept .txt").html(e.bt.accept), $("#pp-box #bt-pprefuse .txt").html(e.bt.refuse), pageApp) {
        if ($("#home .bt#home-bt-switch .txt").html(e.bt.version), $("#home .bt#home-bt-list .txt").html(appBrowser ? e.bt.myMix : e.bt.mixList), $("#mixlist .tab#tab-mixlist .txt").html(e.bt.myMix), $("#mixlist .tab#tab-top50 .txt").html(e.bt.top50), $("#mixlist .tab#tab-latest .txt").html(e.bt.latest), $("#mixlist .tab#tab-search .txt").html(e.bt.search), $("#mixlist #searchbox #input-search").attr("placeholder", e.txt.inputSearch), $("#mixlist #searchbox #input-search").val(""), lastSearch = "", cleanListSearch(), $("#mixlist .tab-filter #bt-name .txt").html(e.bt.djname), $("#mixlist .tab-filter #bt-title .txt").html(e.bt.mixtitle), $("#mixlist .tab-filter #bt-dedi .txt").html(e.txt.dedicatedTo.split("%{name}").join("")), $("#mixlist .tab-filter #bt-day .txt").html(e.bt.day), $("#mixlist .tab-filter #bt-week .txt").html(e.bt.week), $("#mixlist .tab-filter #bt-month .txt").html(e.bt.month), $("#mixlist .tab-filter #bt-year .txt").html(e.bt.year), $("#mixlist .scroll:not(#list-mymix) .infoListmix").html(e.txt.top50Info), totalNumberMix > 0 ? $("#mixlist #list-latest .boxinfo").html(e.txt.latestMixInfo.replace("%{mix_total}", numberSpaced(totalNumberMix)).replace("%{version_name}", app.name)) : $("#mixlist #list-latest .boxinfo").html(e.txt.latestMixInfo.split("<br>")[0]), $("#mixlist #list-day .boxinfo").html(e.txt.top50Info), $("#mixlist #list-week .boxinfo").html(e.txt.top50Info), $("#mixlist #list-month .boxinfo").html(e.txt.top50Info), $("#mixlist #list-year .boxinfo").html(e.txt.top50Info), $("#mixlist .box-info .offline .txt").html(e.txt.offline), $("#watch-info #bt-save .txt").html(e.bt.save), $("#watch-info .offline .txt").html(e.txt.offline), notnull(localMixObject)) {
            var t = 0 == localMixObject.getMixlist().length ? STR("txt.mixlistEmpty") : STR("txt.mixlistInfo");
            $("#list-mymix .boxinfo", $poplist).html(t)
        }
        $("#watch-info .date, .box-info .date").each(function() {
            if ($(this).attr("data-date")) {
                var e = $(this).attr("data-date");
                $(this).html(getStringDate(e))
            }
        }), $("#pop-album .text").html(e.txt.prezAlbum), $("#pop-album #bt-album .txt").html(e.bt.listenAlbum), $("#pop-switch .title").html(e.txt.enjoyVersion), $("#game #box-bt1 #bt-stop .txt").html(e.bt.menuRestart), $("#game #box-bt1 #bt-random .txt").html(e.bt.menuRandom), $("#game #box-bt1 #bt-record .txt").html(e.bt.menuRecord)
    } else $("#page-splash #sp-baseline").html(STR("txt.baseline")), $("#page-splash #sp-text").html(STR("txt.useHeadphones")), $("#page-splash #sp-text").html(STR("txt.selectVersion"));
    notnull(boxPopup) && boxPopup.isOpen() && boxPopup.refresh()
}

function loadLanguage(e, t) {
    var o = notnull(t) && notnull(languageListe[t]) ? t : notnull(user.lang) && "" != user.lang ? user.lang : "" != machine.language ? machine.language : defaultLanguage;
    appBrowser && (o = null != getParameterByName("lang") ? getParameterByName("lang") : defaultLanguage), o = checkLanguageCode(o), isnull(languageListe[o]) && (o = defaultLanguage);
    $("#pop-language .box-lang .bt-mini#bt-lang-" + o).addClass("active");
    notnull(translateObj) && $("body").removeClass("lang-" + currentLanguage);
    var i = new XMLHttpRequest;

    function n() {
        return setUserInfo({
            lang: defaultLanguage
        }), boxDialog.open("Impossible to load language settings. Please reload or force to quit the app then retry.", "ERROR", ["Reload"], [gotoAppUrl], !0), removeFadeAll(), saveGA("language", "load_failed", o), !1
    }
    i.addEventListener("load", function() {
        translateObj = jsonDecode(this.responseText), setUserInfo({
            lang: currentLanguage = o
        }), $("body").addClass("lang-" + currentLanguage), isnull(e) || e();
        saveGA("language", "load_success", currentLanguage)
    }, !1), i.addEventListener("error", n, !1), i.addEventListener("abort", n, !1), i.open("GET", "./lang/" + o + ".json"), i.send()
}

function clickBtLang(e) {
    var t = $(e.currentTarget),
        o = t.attr("id").replace("bt-lang-", "");
    t.hasClass("active") || ($("#pop-language .box-lang .bt-mini").removeClass("active"), t.addClass("active"), loadLanguage(changeDomTxt, o))
}

function STR(e) {
    for (var t = e.split("."), o = translateObj.trad, i = 0, n = t.length; i < n; i++) {
        var s = t[i];
        if (!(s in o)) return;
        o = o[s]
    }
    return o
}
var CloudSync = function() {
        return this.sync = nada, this.save = nada, this.remove = nada, this
    },
    LocalStorage = function() {
        var e = this;
        return this.setItem = function(e, t) {
            window.localStorage.setItem(e, t)
        }, this.getItem = function(e) {
            return window.localStorage.getItem(e)
        }, this.getAllItem = function() {
            return window.localStorage
        }, this.removeItem = function(e) {
            window.localStorage.removeItem(e)
        }, this.clear = function() {
            window.localStorage.clear()
        }, this.weight = function() {
            var e, t, o = window.localStorage,
                i = 0,
                n = "LS | --------------------------\n";
            for (t in o) i += e = 2 * (o[t].length + t.length), n += "LS | " + t.substr(0, 50) + " = " + (e / 1024).toFixed(2) + " KB\n";
            return n += "LS | Total = " + (i / 1024).toFixed(2) + " KB\n", n += "LS | --------------------------"
        }, this.restoreUUID = function() {
            if (!appBrowser) {
                var t = e.getAllItem(),
                    o = getListUUID();
                for (var i in t)
                    if (-1 != i.indexOf("mix-")) {
                        var n = jsonDecode(t[i]);
                        notnull(n.uuid) && e.setItem("uuid-" + n.uuid)
                    } var s = getListUUID();
                uniqueBetweenArray(o, s).length > 0 && storage.removeItem("restore-all-mix")
            }
        }, this.restoreAllMix = function(t, o) {
            var i = o || nada;
            !0 === t && storage.removeItem("restore-all-mix"), !appBrowser && hasNetwork && isnull(storage.getItem("restore-all-mix")) && $.ajax({
                type: "POST",
                url: domainOnline + "ph2/get-all-mix-db.php",
                data: {
                    uuid: jsonEncode(getListUUID())
                },
                dataType: "json",
                crossdomain: !0,
                success: function(t) {
                    if ("success" == t.state) {
                        var o = t.list;
                        if (o.length > 0)
                            for (var n = 0, s = o.length; n < s; n++) {
                                var a = jsonDecode(o[n]);
                                a.online = !0, a.mymix = !0, localMixObject.saveMix(a)
                            }
                        i({
                            msg: "ok",
                            nb: o.length
                        }), e.setItem("restore-all-mix", "ok"), saveGA("mix", "get_all_db")
                    } else i({
                        msg: "bug"
                    }), saveGA("mix", "get_all_db_failed")
                },
                error: function(e) {
                    i({
                        msg: "error"
                    }), saveGA("mix", "get_all_db_error")
                }
            })
        }, this.init = function() {
            e.restoreUUID(), e.restoreAllMix()
        }, this
    },
    LocalMixObject = function() {
        var e = this;
        this.saveMix = function(e, t, o) {
            var i = !!notnull(t) && t,
                n = !notnull(o) || o;
            if (notnull(e)) {
                var s = -1 == e.link.indexOf("mix-") ? "mix-" + e.link : e.link;
                s = i ? s.replace("mix-", "fav-") : s;
                var a = jsonEncode(e);
                return storage.setItem(s, a), n && cloud.save(s, a), !0
            }
            return !1
        }, this.deleteMix = function(e) {
            return !!notnull(storage.getItem(e)) && (storage.removeItem(e), cloud.remove(e), !0)
        }, this.deleteMixById = function(t) {
            var o, i = e.getAllMix(!0),
                n = e.getAllMix(!0, !0);
            for (o in i) i[o].id == t && (e.deleteMix("mix-" + i[o].link), e.deleteMix("fav-" + i[o].link));
            for (o in n) n[o].id == t && (e.deleteMix("fav-" + n[o].link), e.deleteMix("mix-" + n[o].link))
        }, this.getMix = function(e) {
            return !!notnull(storage.getItem(e)) && jsonDecode(storage.getItem(e))
        }, this.getAllMix = function(e, t) {
            var o = !!notnull(e) && e,
                i = !!notnull(t) && t,
                n = [],
                s = storage.getAllItem(),
                a = i ? "fav-" : "mix-";
            for (var u in s) - 1 != u.indexOf(a) && (o && -1 == u.indexOf("v" + app.version) && -1 == u.indexOf("-IOSV" + app.version) || n.push(jsonDecode(s[u])));
            return n
        }, this.getMixlist = function() {
            var t = e.getAllMix(!0, !1);
            return e.sortArrayMix(t)
        }, this.getFavlist = function() {
            var t = e.getAllMix(!0, !0);
            return e.sortArrayMix(t)
        }, this.sortArrayMix = function(e, t) {
            return e.sort(function(e, t) {
                return t.date > e.date ? 1 : t.date < e.date ? -1 : 0
            }), !0 === t && (e = e.reverse()), e
        }, this.getLastMix = function() {
            var t = e.getAllMix(!1),
                o = t.length;
            return o > 0 ? t[o - 1] : null
        }, this.getLastDjName = function() {
            var t = e.getLastMix();
            return notnull(t) ? t.name : ""
        }, this.deleteAllMix = function() {
            var e = storage.getAllItem();
            for (var t in e) - 1 == t.indexOf("mix-") && -1 == t.indexOf("fav-") || storage.removeItem(t)
        }, this.getStatMixOnline = function(t) {
            for (var o = e.getMixlist(), i = o.length, n = [], s = 0; s < i; s++) {
                var a = o[s];
                a.online && notnull(a.id) && n.push(parseInt(a.id))
            }
            n.length > 0 ? xhr("POST", domainOnline + "ph2/get-stat-mix.php", {
                tabid: jsonEncode(n)
            }, function(o) {
                if ("success" == o.state) {
                    XHRmemotime.mymix = new Date;
                    for (var i = o.list, s = [], a = 0, u = i.length; a < u; a++) {
                        var r = jsonDecode(i[a]);
                        s.push(parseInt(r.id));
                        var c = e.getMix("mix-" + r.link);
                        c.id = r.id, c.newnbview = r.nbview, c.newnblike = r.nblike, e.saveMix(c)
                    }
                    if (s.length < n.length) {
                        var p = uniqueBetweenArray(s, n);
                        for (var l of p) e.deleteMixById(l)
                    }
                    void 0 !== t && t()
                }
            }, function(e) {}) : void 0 !== t && t()
        }, this.getStatFavOnline = function(t) {
            for (var o = e.getFavlist(), i = o.length, n = [], s = 0; s < i; s++) {
                var a = o[s];
                a.mymix && !a.online || !notnull(a.id) || n.push(parseInt(a.id))
            }
            n.length > 0 ? xhr("POST", domainOnline + "ph2/get-stat-mix.php", {
                tabid: jsonEncode(n)
            }, function(o) {
                if ("success" == o.state) {
                    XHRmemotime.myfav = new Date;
                    for (var i = o.list, s = [], a = 0, u = i.length; a < u; a++) {
                        var r = jsonDecode(i[a]);
                        s.push(parseInt(r.id));
                        var c = e.getMix("fav-" + r.link);
                        c.id = r.id, c.nbview = r.nbview, c.nblike = r.nblike, e.saveMix(c, !0)
                    }
                    if (s.length < n.length) {
                        var p = uniqueBetweenArray(s, n);
                        for (var l of p) e.deleteMixById(l)
                    }
                    void 0 !== t && t()
                }
            }, function(e) {}) : void 0 !== t && t()
        }
    },
    PoloObject = function(e, t, o, i, n, s) {
        this.sound = new SoundObject(o, "polo" + e);
        var a = this,
            u = $("#polo" + e, t).css({
                left: n + 20 + "px",
                top: s + "px"
            }),
            r = $('<div class="zone"><div class="loader"><div class="bar"></div></div></div>'),
            c = $(".loader", r),
            p = $(".bar", r),
            l = !1;
        $boxLoaderPolo.append(r), r.css({
            left: n + 20 + "px"
        });
        var d, f, h, m, v, b, g, x, D, C, k, P, w, A, S, F, y, E, T, B, M, I, L, O, R, H, z = e,
            N = i,
            G = "",
            j = "normal",
            _ = !1,
            U = spritePolo,
            W = Le,
            V = .5,
            X = .3,
            Y = 0,
            q = !1,
            Q = "hd" == animeSize ? 2 : "mini" == animeSize ? .6 : 1,
            K = "hd" == animeSize ? 2 : 1,
            Z = 400 * K,
            J = 40 * K,
            ee = 60 * K,
            te = u.find(".ctrl");
        this.$btcMute = u.find(".icon-game-bt-mute"), this.$btcSolo = u.find(".icon-game-bt-solo"), this.$btcStop = u.find(".icon-game-bt-delete"), this.posX = n * K, this.posY = Z, this.pictoHoverId = null, this.reinit = function() {
            se(), a.draw(), q = !1, a.pictoHoverId = null, v = b = g = x = D = C = k = 0, G = P = w = A = S = F = null, y = E = T = B = M = I = L = O = !1
        }, this.setPosition = function() {
            d = t.offset().left, f = t.offset().top, m = $incredibox.offset().top + ($incredibox.outerHeight() - 252) * stageScale, h = {
                px: u.offset().left,
                py: u.offset().top,
                width: u.outerWidth() * stageScale * poloScale,
                height: u.outerHeight() * stageScale * poloScale
            }
        }, this.getId = function() {
            return z
        }, this.getPicto = function() {
            return P
        }, this.getAssetId = function() {
            return w
        }, this.getMoment = function() {
            return D
        }, this.getLoop = function() {
            return C
        }, this.getEnabled = function() {
            return E
        }, this.getBusy = function() {
            return T
        }, this.getHover = function() {
            return q
        }, this.getMode = function() {
            return j
        }, this.getDeleting = function() {
            return M
        }, this.getPlaying = function() {
            return B
        }, this.getDiv = function() {
            return u
        }, this.getMute = function() {
            return I
        }, this.getHide = function() {
            return O
        }, this.getSolo = function() {
            return L
        }, this.setSolo = function(e) {
            (L = e) ? a.$btcSolo.addClass("light"): a.$btcSolo.removeClass("light")
        }, this.setLoop = function(e) {
            C = e
        }, this.setMoment = function(e) {
            D = e
        }, this.setPlaying = function(e) {
            B = e
        }, this.habiller = function(e, t, o, i, n) {
            a.checkState(), P = e, w = e.getId(), D = t, A = o.imgData, F = o.headHeight, S = o.imgSprite, G = o.color, k = A.length, T = !0, p.css({
                "background-color": "#" + G
            }), _ ? a.mode("waiting") : (y = !0, TweenMax.delayedCall(i, function() {
                a.rebond(n)
            })), recordMix.xmlAction("append", a)
        }, this.checkState = function() {
            M && (_ || (TweenMax.killTweensOf(a), a.remonte(0, !0, !1)))
        }, this.deshabiller = function(e, t) {
            y && (y = !1, TweenMax.killTweensOf(a.rebond), TweenMax.killTweensOf(a.rebond2)), M = !0, T = !1, P.desactiver(), P.checkusedTouchStart();
            a.posY;
            var o = t ? 0 : .3;
            TweenMax.to(a, o, {
                posY: Z,
                ease: Quint.easeIn,
                onComplete: a.remonte,
                onCompleteParams: [0, !0, t],
                delay: e,
                overwrite: !0
            }), this.hideLoader(), recordMix.xmlAction("remove", a)
        }, this.baisser = function(e, t) {
            this.posY = Z
        }, this.remonte = function(e, t, o) {
            if (_ = !0, !0 === t) {
                var i = !modeReplay && !modeRandom && !modeWatch;
                P.reactiver(i), a.reinit(), majListPoloDrop()
            }
            a.mode("normal");
            var n = J + Math.round(Math.random() * ee),
                s = (a.posY, o ? 0 : .4),
                u = o ? 0 : e;
            TweenMax.to(a, s, {
                posY: n,
                ease: Back.easeOut,
                delay: u,
                onComplete: function() {
                    _ = !1
                },
                overwrite: !0
            })
        }, this.rebond = function(e) {
            var t = a.posY - 20,
                o = B ? "anime" : "waiting",
                i = e ? 0 : .1;
            o = a.getMute() ? "mute" : o, a.mode(o), TweenMax.to(a, i, {
                posY: t,
                ease: Quint.easeOut,
                onComplete: a.rebond2,
                onCompleteParams: [e],
                overwrite: !0
            }), y = !1
        }, this.rebond2 = function(e) {
            var t = a.posY + 20,
                o = e ? 0 : .2;
            TweenMax.to(a, o, {
                posY: t,
                ease: Back.easeOut,
                overwrite: !0
            })
        }, this.showLoader = function() {
            l = !0, c.addClass("show"), p.css({
                "animation-duration": decimal(getRemainingTime() / 1e3, 2) + "s"
            }), p.addClass("progress")
        }, this.hideLoader = function() {
            l && (l = !1, c.removeClass("show"), p.removeClass("progress"))
        }, this.hideYourself = function() {
            (B || T) && (O = !0, Y = I ? 1 - X : Y, a.mode("hide"))
        }, this.stopHidingYourself = function() {
            (B || T) && a.mode("unhide")
        }, this.stopHidingYourselfComplete = function() {
            O = !1, I ? a.mode("mute") : B ? a.mode("anime") : a.mode("waiting")
        };
        var oe = 0,
            ie = [],
            ne = [
                [0, 1, 2, 2, 1, 0],
                [0, 3, 4, 5, 6, 7, 8, 0],
                [0, 3, 4, 4, 3, 0],
                [0, 1, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, 2, 2, 2, 2, 0],
                [0, 1, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, 2, 2, 9, 9, 9, 9, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0],
                [0, 1, 2, 2, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 2, 2, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, 2, 2, 10, 10, 10, 10, 10, 2, 2, 0]
            ];

        function se() {
            var e = random(7) + 2;
            TweenMax.delayedCall(e, ae)
        }

        function ae() {
            R = getTime();
            var e = random(ne.length - 1);
            ie = ne[e], H = ie.length, oe = H / (36 * H), a.mode("cligne")
        }
        var ue = appDesktop ? 420 : 400,
            re = 164 * K,
            ce = ue * K,
            pe = 164 * Q,
            le = ue * Q,
            de = 164 * K,
            fe = 380 * K,
            he = 164 * Q,
            me = 380 * Q,
            ve = 40,
            be = 492,
            ge = 0,
            xe = 97 * K,
            De = 164 * K,
            Ce = ve * K,
            ke = 164 * Q,
            Pe = ve * Q,
            we = 450 * Q,
            Ae = 16 * Q,
            $e = 16 * K,
            Se = 7 * K,
            Fe = 54,
            ye = 110,
            Ee = 95,
            Te = 110;

        function Be() {
            N.globalAlpha = 1, N.drawImage(U, 0, 0, pe, le, a.posX, a.posY, re, ce)
        }

        function Me(e, t) {
            e *= Q, t *= Q, N.drawImage(U, e, t, ke, Pe, a.posX, a.posY + xe, De, Ce)
        }

        function Ie() {
            N.globalAlpha = 1 - V, N.drawImage(U, pe, 0, pe, le, a.posX, a.posY, re, ce)
        }

        function Le() {
            Be(), Me(be, ge), Ie()
        }

        function Oe() {
            N.globalAlpha = 1, N.drawImage(S, 0, 0, he, me, a.posX, a.posY, de, fe)
        }

        function Re() {
            Oe(), N.globalAlpha = 1 - X, N.drawImage(S, 2 * he, 0, he, me, a.posX, a.posY, de, fe)
        }

        function He() {
            Oe(), Y = 1, N.globalAlpha = Y, N.drawImage(S, 2 * he, 0, he, me, a.posX, a.posY, de, fe)
        }

        function ze() {
            Oe();
            var e = I ? 1 - X : 0;
            Y = Y <= e ? e : decimal(Y - .1, 2), N.globalAlpha = Y, N.drawImage(S, 2 * he, 0, he, me, a.posX, a.posY, de, fe), Y <= e && a.stopHidingYourselfComplete()
        }

        function Ne() {
            y ? Le() : (a.anime(), N.globalAlpha = 1, N.drawImage(S, he, 0, he, me, a.posX, a.posY, de, fe), N.drawImage(S, v, Math.ceil(b) + 1, he, Math.floor(F * Q) - 1, a.posX + g, Math.ceil(a.posY + x) + 1, de, Math.floor(F * K) - 1))
        }

        function Ge() {
            var e = timenow - R,
                t = Math.floor(e * oe);
            t = t > H - 1 ? H - 1 : t, Be(), Me(be, ie[t] * ve), Ie(), t >= H - 1 && a.mode("normal")
        }

        function je() {
            if (M) Ne();
            else {
                Be();
                var e = a.getPupPos(Fe, ye),
                    t = a.getPupPos(Ee, Te);
                N.drawImage(U, 0, we, Ae, Ae, e[0], e[1], $e, $e), N.drawImage(U, 0, we, Ae, Ae, t[0], t[1], $e, $e), mouseY < f + a.posY + 50 ? Me(328, 120) : mouseY >= f + a.posY + 50 && mouseY < f + a.posY + 100 ? Me(328, 80) : mouseY >= f + a.posY + 180 ? Me(328, 40) : Me(328, 0)
            }
        }

        function _e() {
            je(), Ie()
        }

        function Ue() {
            je()
        }
        this.mode = function(e) {
            if (e != j) switch (TweenMax.killTweensOf(ae), j = e) {
                case "normal":
                    W = Le, se();
                    break;
                case "cligne":
                    W = Ge;
                    break;
                case "regarde":
                    W = _e;
                    break;
                case "hover":
                    W = Ue;
                    break;
                case "waiting":
                    W = Oe;
                    break;
                case "anime":
                    W = Ne;
                    break;
                case "mute":
                    W = Re;
                    break;
                case "hide":
                    W = He;
                    break;
                case "unhide":
                    W = ze
            }
        }, this.draw = function() {
            W()
        }, this.updateLoader = function() {}, this.anime = function() {
            var e = frame;
            boucleA && k == frameTotal && (e += frameHalf), v = A[e = e >= k - 1 ? k - 1 : e][0] * Q, b = A[e][1] * Q, g = A[e][2] * K, x = A[e][3] * K
        }, this.getPupPos = function(e, t) {
            var o = (mouseX - d) / stageScale,
                i = (mouseY - f) / stageScale,
                n = o / poloScale - e - this.posX / K,
                s = i / poloScale - t - this.posY / K,
                u = Math.atan2(s, n);
            return [Se * Math.cos(u) + (a.posX + e * K), Se * Math.sin(u) + (a.posY + t * K)]
        };
        var We = 0,
            Ve = 0,
            Xe = isTouchCapable ? 60 * stageScale : 20,
            Ye = 0,
            qe = isTouchCapable ? 60 * stageScale : 20;

        function Qe(e) {
            notnull(e) && e.preventDefault(), L ? (1 == getTotalSolo() ? stopSoloPolo() : a.mute(), L = !1) : a.switchMute(), I || L || stopOtherSolo()
        }

        function Ke(e) {
            notnull(e) && e.preventDefault(), clickPolo(a)
        }

        function Ze(e) {
            notnull(e) && e.preventDefault(), L ? (L = !1, unmuteAll(a)) : (L = !0, muteAll(a))
        }
        this.activerClick = function() {
            E = !0, u.on(evtPress, a.touchStart), a.activerCtrl()
        }, this.desactiverClick = function() {
            E = !1, TweenMax.killTweensOf(a.touchLong), u.off(evtPress, a.touchStart), u.off(evtMove, a.touchMove), u.off(evtPressEnd, a.touchEnd), a.desactiverCtrl()
        }, this.touchStart = function(e) {
            e.preventDefault(), !1;
            var t = notnull((e = ~e.type.indexOf("touch") ? e.originalEvent : e).targetTouches) ? e.targetTouches[0] : e;
            We = Ve = t.pageX, Ye = t.pageY, TweenMax.delayedCall(.25, a.touchLong, [e]), u.off(evtPress, a.touchStart), u.on(evtMove, a.touchMove), u.on(evtPressEnd, a.touchEnd)
        }, this.touchMove = function(e) {
            e.preventDefault();
            var t = notnull((e = ~e.type.indexOf("touch") ? e.originalEvent : e).targetTouches) ? e.targetTouches[0] : e;
            Ve = t.pageX, t.pageY > Ye + qe && Math.abs(Ve - We) < Xe && (TweenMax.killTweensOf(a.touchLong), clickPolo(a))
        }, this.touchLong = function(e) {
            e.preventDefault(), TweenMax.killTweensOf(a.touchLong), L = !0, soloPolo(), a.$btcSolo.addClass("light")
        }, this.touchEnd = function(e) {
            e.preventDefault(), !0, TweenMax.killTweensOf(a.touchLong), u.off(evtMove, a.touchMove), u.off(evtPressEnd, a.touchEnd), u.on(evtPress, a.touchStart), L ? (1 == getTotalSolo() ? stopSoloPolo() : a.mute(), L = !1, a.$btcSolo.removeClass("light")) : a.switchMute()
        }, this.activerCtrl = function() {
            isMouseDevice && !isTouchDevice && (te.addClass("visible").on(evtPress, stopProp), a.$btcMute.on(evtClick, Qe), a.$btcSolo.on(evtClick, Ze), a.$btcStop.on(evtClick, Ke))
        }, this.desactiverCtrl = function() {
            isMouseDevice && !isTouchDevice && (te.removeClass("visible").off(), a.$btcMute.off().removeClass("light"), a.$btcSolo.off().removeClass("light"), a.$btcStop.off().removeClass("light"))
        }, this.playSound = function() {
            B = !0, this.sound.play(), C++
        }, this.stopSound = function(e) {
            B = !1, this.sound.stop(e)
        }, this.mute = function() {
            I = !0, O || (a.mode("mute"), a.$btcMute.addClass("light")), a.sound.mute(), recordMix.xmlAction("mute", a)
        }, this.unmute = function() {
            I = !1, O || (B ? this.mode("anime") : this.mode("waiting"), a.$btcMute.removeClass("light")), this.sound.unmute(), recordMix.xmlAction("unmute", a)
        }, this.switchMute = function() {
            I ? a.unmute() : a.mute()
        }, this.hitTest = function(e, t) {
            var o = e / stageScale,
                i = t / stageScale;
            return o > h.px && o < h.px + h.width && i > h.py && i < m
        }, this.hitTestPicto = function(e) {
            if (!T && !M) {
                var t = e.getBound();
                return a.hitTest(Math.round(t.px * stageScale), Math.round(t.py * stageScale))
            }
            return !1
        }, this.rollover = function() {
            q || (q = !0, a.mode("hover"))
        }, this.rollout = function(e) {
            !!notnull(e) && e ? (q = !1, a.mode("normal")) : q && (q = !1, a.mode("regarde"))
        }, this.setPosition(), this.reinit()
    },
    PictoObject = function(e, t) {
        var o, i, n, s = this,
            a = e,
            u = $("#picto" + a, t),
            r = $(".scale", u),
            c = !1,
            p = u.innerWidth(),
            l = 0,
            d = isMobile ? 1.1 : 1.2,
            f = 0,
            h = {
                px: 0,
                py: 0
            };
        this.getDiv = function() {
            return u
        }, this.getId = function() {
            return a
        }, this.getColor = function() {}, this.use = !1, this.polo = null, this.init = function(e, t) {
            f = -a * p, u.css({
                top: t + "px",
                left: e + "px"
            }), r.css({
                "background-position": String(f) + "px 0px"
            }), s.setPosition()
        }, this.setPosition = function() {
            u.parent().offset().top, u.parent().offset().left, i = u.offset().left, n = u.offset().top
        }, this.getBound = function() {
            return h
        }, this.activer = function() {
            s.desactiver(), u.on(evtPress, s.touchStart)
        }, this.desactiver = function() {
            u.off(), notnull(o) && (o.off(evtMove, s.touchMove), o.off(evtPressEnd, s.touchEnd), o.off(evtPressEnd, s.usedTouchEnd))
        }, this.touchStart = function(e) {
            e.preventDefault(), c || (isMouseDevice && !isTouchDevice && $(".polo").addClass("noPointerEvents"), c = !0, u.off(), (o = ~e.type.indexOf("touch") ? u : $body).on(evtMove, s.touchMove), o.on(evtPressEnd, s.touchEnd), u.removeClass("flashme"), u.addClass("drag"), s.touchMove(e), pictoOnDrag(s))
        }, this.touchMove = function(e) {
            e.preventDefault();
            var t = notnull((e = ~e.type.indexOf("touch") ? e.originalEvent : e).targetTouches) ? e.targetTouches[0] : e;
            s.bouger(t.pageX, t.pageY), e.preventDefault(), pictoOnMove(s)
        }, this.touchEnd = function(e) {
            e.preventDefault(), isMouseDevice && !isTouchDevice && $(".polo").removeClass("noPointerEvents"), s.stopDrag(), pictoOnDrop(s)
        }, this.stopDrag = function() {
            c = !1, o.off(evtMove, s.touchMove), o.off(evtPressEnd, s.touchEnd), u.removeClass("drag")
        }, this.bouger = function(e, t) {
            h = {
                px: e,
                py: t
            };
            var o = (e - i) / stageScale,
                s = (t - n) / stageScale;
            o -= p / 2 * pictoScale, s -= p / d * pictoScale, o /= pictoScale, s /= pictoScale, u.css({
                transform: "translate3d(" + o + "px, " + s + "px, 0px)"
            })
        }, this.replacer = function() {
            c && s.stopDrag(), u.addClass("replacer").one(animationEnd, s.replacerFini)
        }, this.absorber = function(e) {
            u.css({
                transform: "translate3d(0px, 0px, 0px)"
            }), r.css({
                "background-position": String(f) + "px -68px"
            }), u.removeClass("replacer"), u.addClass("griser"), s.use = !0, s.polo = e, u.off().on(evtPress, s.usedTouchStart)
        }, this.reactiver = function(e) {
            var t = !!notnull(e) && e;
            r.css({
                "background-position": String(f) + "px 0px"
            }), u.removeClass("griser"), !t || modeRandom || modeReplay ? s.replacerFini() : u.addClass("flashme").one(animationEnd, function(e) {
                $(e.target).removeClass("flashme"), s.replacerFini()
            })
        }, this.replacerFini = function() {
            u.removeClass("replacer"), u.css({
                transform: "translate3d(0px ,0px, 0px)"
            }), s.use = !1, s.activer()
        }, this.usedTouchStart = function(e) {
            e.preventDefault(), l = getTime(), showPoloInArray([s.polo.getId()]), o.on(evtPressEnd, s.usedTouchEnd)
        }, this.usedTouchEnd = function(e) {
            e.preventDefault(), o.off(evtPressEnd, s.usedTouchEnd), stopShowingPoloInArray(l), l = 0
        }, this.checkusedTouchStart = function() {
            0 != l && s.usedTouchEnd()
        }
    },
    BonusObject = function(e, t, o, i) {
        var n, s = this,
            a = t,
            u = e + 1,
            r = $("#bt-bonus-" + u),
            c = r.find(".quarter"),
            p = $(".circle", r),
            l = $("#box-video .video#video" + u),
            d = $("#box-video .video#video" + u + " video")[0],
            f = !1,
            h = !1,
            m = !1,
            v = new SoundObject(o, "bonus" + u),
            b = new SoundObject(o, "aspire" + u),
            g = new SoundObject(o, "expire" + u),
            x = i.snd,
            D = i.aspire,
            C = i.expire,
            k = numberArray(a.code.split(",")),
            P = k.length,
            w = [],
            A = 0,
            S = 0;
        this.tabSVG = w, this.video = d, this.found = !1, this.unlock = !1, s.cntCode = 0, this.init = function() {
            var e = storage.getItem("v" + appVersion + "-bonus-complete") || 0;
            s.getId() <= e && s.unlockme();
            for (var t = 0; t < P; t++) {
                var o = {
                    obj: $(".svg.q" + (t + 1), c),
                    col: $(".svg.q" + (t + 1) + " svg", c).css("fill")
                };
                w.push(o)
            }
            s.modeTouch()
        }, this.reinit = function() {
            s.hideLoader(), r.removeClass("inprogress found bounce"), c.find(".svg").removeClass("directshow show hide"), s.found = !1, s.inprogress = !1, s.cntCode = 0, s.modeTouch()
        }, this.modeTouch = function() {
            r.off().on(evtPress, s.touchStart)
        }, this.modeClick = function() {
            r.off().on("click", s.launchVideo)
        }, this.unlockme = function() {
            r.addClass("unlock"), this.unlock = !0
        }, this.getId = function() {
            return u - 1
        }, this.getCode = function() {
            return k
        };
        var F = $('<div class="zone"><div class="loader"><div class="bar"></div></div></div>'),
            y = $(".loader", F),
            E = $(".bar", F),
            T = !1;
        $boxLoaderBonus.append(F), this.showLoader = function() {
            T = !0, y.addClass("show"), E.css({
                "animation-duration": decimal(getRemainingTimeBeforeBonus() / 1e3, 2) + "s"
            }), E.addClass("progress")
        }, this.hideLoader = function() {
            T && (T = !1, y.removeClass("show"), E.removeClass("progress"))
        };
        var B = new ClockObject("canvas-bt-bonus-" + u);
        B.init(43, 43, 1, 35, 16), this.playAspiration = function(e) {
            e = notnull(e) ? e : 0, b.prepare(D, 0), b.play(e, !0), m = !0
        }, this.stopAspiration = function() {
            m && (b.stop(), m = !1)
        }, this.playExpiration = function() {
            g.prepare(C, 1), g.play(0, !0)
        }, this.stopExpiration = function() {
            g.stop()
        }, this.hasCode = function(e) {
            return -1 != k.indexOf(e)
        }, this.checkCode = function(e, t) {
            var o = k.indexOf(e);
            o > -1 && (t ? s.showQuarter(o) : s.hideQuarter(o))
        }, this.showQuarter = function(e) {
            s.cntCode++;
            var t = w[e].obj,
                o = w[e].col;
            s.cntCode == P && s.unlock && s.hasBeenFound(), 1 == s.cntCode && (s.inprogress = !0, r.addClass("inprogress")), p.addClass("show").one(animationEnd, function(e) {
                $(e.target).removeClass("show")
            }), p.css({
                "border-color": o
            }), t.removeClass("hide").addClass("directshow show")
        }, this.hideQuarter = function(e) {
            var t = w[e].obj;
            s.unlock ? t.addClass("hide").one(animationEnd, function(e) {
                $(e.target).removeClass("directshow show hide")
            }) : t.removeClass("directshow show hide"), s.cntCode == P && (cancelClickBtBonus(), this.notFoundAnymore()), s.cntCode--, s.cntCode < 0 && (s.cntCode = 0), 0 == s.cntCode && (s.inprogress = !1, r.removeClass("inprogress"))
        }, this.hideClock = function() {
            B.stop(!0)
        }, this.render = function(e) {
            B.render()
        }, this.hasBeenFound = function() {
            modeReplay || (r.addClass("found bounce"), popupBonusUnlocked()), s.modeClick(), s.found = !0
        }, this.notFoundAnymore = function() {
            modeReplay || r.removeClass("found bounce"), s.found = !1, s.hideClock(), s.hideLoader(), s.modeTouch()
        }, this.touchStart = function(e) {
            e.preventDefault(), s.unlock ? bonusPlaying || ((n = ~e.type.indexOf("touch") ? r : $body).on(evtPressEnd, s.touchEnd), A = getTime(), showPoloAndPictoInCombo(u)) : popupFindPreviousBonus()
        }, this.touchEnd = function(e) {
            e.preventDefault(), n.off(evtPressEnd, s.touchEnd), stopShowingPoloInArray(A)
        }, this.launchVideo = function() {
            if (!bonusWaiting && !bonusPlaying) {
                var e = !app.bonusloopA || boucleA;
                !modeWatch && getRemainingTime() < 500 && e || (h = !0, s.modeTouch(), s.showLoader(), recordMix.xmlAction("bonus", s), clickBtBonus(u), r.removeClass("bounce"), p.addClass("showCircle").one(animationEnd, function(e) {
                    $(e.target).removeClass("showCircle")
                }), s.prepareVideo(1))
            }
        }, this.prepareVideo = function(e) {
            0,
            S = app.looptime * (e - 1) / 1e3,
            d.currentTime = S
        }, this.videoPlaying = function() {}, this.videoEnded = function() {}, this.loopAtFirstFrame = function() {
            0,
            d.currentTime = S
        }, this.checkCurrentTime = function() {}, this.play = function() {
            d.play(), h = !1, f = !0, m = !1, d.currentTime = S, r.addClass("playing"), s.hideLoader(), B.start(loopDuration * app.nbloopbonus, !1), v.prepare(x), v.play(S), l.addClass("show")
        }, this.stop = function(e) {
            r.removeClass("playing"), loopOn && s.found && s.modeClick(), f && (v.stop(), B.stop(!0)), s.stopAspiration(), h = !1, f = !1, l.removeClass("show")
        }, this.pause = function() {
            h && d.pause(), f && (d.pause(), v.pause()), m && b.pause(), B.pause()
        }, this.resume = function() {
            h && d.play(), f && (d.play(), v.unpause()), m && b.unpause(), B.resume()
        }, this.init()
    },
    SoundObject = function(e, t) {
        var o, i, n, s, a, u = this,
            r = e,
            c = null,
            p = null,
            l = null,
            d = !1,
            f = !1,
            h = isIOS,
            m = !1,
            v = !1,
            b = h ? 0 : 1e-4,
            g = debugMute ? b : 1;
        this.getMute = function() {
            return d
        }, this.getDuration = function() {
            return null != p ? p.duration : 0
        }, this.getCurrentTime = function() {
            return null != c && null != c.context ? c.context.currentTime : 0
        }, this.setSilence = function() {
            g = b, v = !0
        }, this.setVolume = function(e) {
            h ? o.gain.value = e : o.gain.setValueAtTime(e, r.currentTime)
        }, this.onComplete = function(e) {
            c.onended = e, l = e
        }, this.prepare = function(e, t) {
            p = e, (c = (r = contextAudio).createBufferSource()).buffer = p, p.duration, o = r.createGain();
            var i = 0 == t || d || v ? b : g;
            u.setVolume(i), c.connect(o), o.connect(r.destination)
        }, this.play = function(e, t) {
            m = !0, i = getTime(), s = (s = (s = decimal(e, 3) || 0) > u.getDuration() ? decimal(u.getDuration(), 2) - .01 : s) < 0 ? 0 : s, c.start(0, s), !0 !== t || d || v || u.fadeIn()
        }, this.stop = function(e) {
            !0 === e || null === c || !m || v || d ? u.stopSource() : u.fadeOut(!0)
        }, this.stopSource = function() {
            clearInterval(a), null != c && m && (isIOS && iosVersionNumber < 103 ? c.noteOff(0) : c.stop(0), c.onended = null), c = null, o = null, f || (d = !1, i = 0, n = 0, s = 0, l = null, m = !1)
        }, this.fadeOut = function(e) {
            var t = !0 === e;
            h ? (clearInterval(a), a = setInterval(function() {
                var e = decimal(o.gain.value - .15, 1);
                e = e <= b ? b : e, o.gain.value = e, e <= b && (clearInterval(a), t && u.stopSource())
            }, 10)) : (o.gain.setValueAtTime(o.gain.value, r.currentTime), o.gain.exponentialRampToValueAtTime(b, r.currentTime + .025), t && (c.stop(r.currentTime + .025), c.onended = u.stopSource))
        }, this.fadeIn = function() {
            h ? (clearInterval(a), a = setInterval(function() {
                var e = decimal(o.gain.value + .15, 1);
                e = e >= g ? g : e, o.gain.value = e, e >= g && clearInterval(a)
            }, 10)) : (o.gain.setValueAtTime(o.gain.value, r.currentTime), o.gain.exponentialRampToValueAtTime(g, r.currentTime + .025))
        }, this.mute = function() {
            null == c || v || u.fadeOut(), d = !0
        }, this.unmute = function() {
            null == c || v || u.fadeIn(), d = !1
        }, this.pause = function() {
            f = !0, n = getTime(), u.stop()
        }, this.unpause = function() {
            if (f = !1, this.prepare(p, 0), null != c && (notnull(l) && (c.onended = l), m)) {
                var e = n - i;
                e = e < 0 ? 0 : e, u.play(s + e / 1e3, !0)
            }
        }
    },
    ClockObject = function(e) {
        var t, o, i, n, s, a, u, r, c, p, l, d = $("#" + e)[0].getContext("2d"),
            f = 2 * Math.PI,
            h = Math.PI / 2,
            m = !1,
            v = !1,
            b = 0;
        this.start = function(e, t) {
            u = isDarkMode() ? "#CCCCCC" : "#5A5A5A", d.strokeStyle = u, m = !0, v = !1, l = t, p = 100 / e, c = getTime()
        }, this.stop = function(e) {
            m = !1, e ? d.clearRect(o - s - a / 2, i - s - a / 2, 2 * s + a, 2 * s + a) : (v = !0, t = l ? 0 : 1)
        }, this.pause = function() {
            b = getTime()
        }, this.resume = function() {
            var e = getTime() - b;
            c += e
        }, this.render = function() {
            if (m || v) {
                if (m) {
                    var e = getTime() - c;
                    r = e * p / 100
                } else v && (r += .2 * (t - r));
                r < .001 && (r = .001), r > .999 && (r = .999);
                var n = l ? -h : f * r - h,
                    u = l ? f * r - h : -h;
                d.clearRect(o - s - a / 2, i - s - a / 2, 2 * s + a, 2 * s + a), d.beginPath(), d.arc(o, i, s, n, u, !1), d.stroke(), v && (.001 != r && .999 != r || (v = !1, d.clearRect(o - s - a / 2, i - s - a / 2, 2 * s + a, 2 * s + a)))
            }
        };
        this.checkAtEnd = function() {
            !0
        }, this.init = function(e, t, r, c, p, l) {
            o = void 0 == e ? 0 : e, i = void 0 == t ? 0 : t, n = void 0 == r ? 1 : r, s = void 0 == c ? 18 : c, a = void 0 == p ? 6 : p, u = void 0 == l ? "#FFFFFF" : l, d.lineWidth = a, d.strokeStyle = u, d.globalAlpha = n
        }
    },
    ReadingBar = function(e, t, o) {
        var i, n = this,
            s = $(e),
            a = $("#reading-buffer", s),
            u = $cntRecord.find("#t-spent"),
            r = $cntRecord.find("#t-duration"),
            c = "00:00",
            p = !1,
            l = 0,
            d = "record",
            f = secToText(app.looptime * app.recmaxloop),
            h = 0,
            m = 0;
        this.minLoop = t, this.maxLoop = o, this.maxTime = 0, this.cntLoop = 0, this.bonusList = [], this.isFinished = function() {
            return this.cntLoop == this.maxLoop
        }, this.isLastLoop = function() {
            return this.cntLoop + 1 == this.maxLoop
        }, this.open = function(e, t) {
            return d = e, n.createRecordBlock(t), n.cntLoop = 0, n.maxTime = "record" == d ? f : secToText(n.maxLoop * app.looptime), a.css({
                transform: "scaleX(0)"
            }), c = "00:00", u.text(c), r.text(" / " + n.maxTime), h = 0, m = 100 / readingBar.maxLoop, s.addClass("open"), $cntRecord.addClass("fadeIn"), n
        }, this.close = function() {
            return removeTransition(s, "open", "transform", function() {
                a.removeClass("progress"), $("#reading-marker").empty(), $("#reading-marker-bonus").empty(), n.bonusList = []
            }), $cntRecord.removeClass("fadeIn cssdelay"), n
        }, this.start = function() {
            return p = !0, n.cntLoop = 0, l = 0, "record" == d ? recordMix.start() : replayMix.start(), n.render(), h = Math.floor(l + i) / n.maxLoop, a.css({
                transform: "scaleX(" + h / 100 + ")",
                "animation-duration": decimal(n.maxLoop * app.looptime / 1e3, 2) + "s"
            }), a.addClass("progress"), n
        }, this.stop = function() {
            return p = !1, "record" == d ? recordMix.stop() : replayMix.stop(), n
        }, this.froze = function() {
            a.addClass("froze")
        }, this.seek = function(e) {
            n.cntLoop = e, a.removeClass("progress"), resetAnimationCSS(a[0]), a.css({
                transform: "scaleX(" + m * n.cntLoop / 100 + ")"
            }), n.render()
        }, this.unfroze = function() {
            a.css({
                transform: "scaleX(" + m * n.cntLoop / 100 + ")",
                "animation-duration": decimal((n.maxLoop - n.cntLoop) * app.looptime / 1e3, 2) + "s"
            }), a.removeClass("froze").addClass("progress")
        }, this.openBig = function() {
            s.addClass("seeking")
        }, this.openNormal = function() {
            s.removeClass("seeking")
        }, this.loop = function() {
            return n.cntLoop++, l += i, n.isFinished() ? "record" == d ? stopRecordMode() : stopReplayMode() : "record" == d ? recordMix.loop() : replayMix.loop(), n
        }, this.render = function() {
            if (p) {
                i = pctMetronome;
                var e = secToText(getTimeSpent() + loopDuration * n.cntLoop);
                c != e && (c = e, u.text(c))
            }
        }, this.createRecordBlock = function(e) {
            var t = "record" == d ? "#D20A0A" : isMiniPlayer ? "#2C86FE" : "#36B460",
                o = "record" == d ? decimal(n.minLoop / n.maxLoop, 2) : 0;
            if ($("#reading-block", s).css({
                    transform: "scale(" + o + ", 1)"
                }), $($cntRecord).css({
                    color: t
                }), a.css({
                    "background-color": t
                }), !0 === e) {
                var i = "",
                    u = parseFloat($incredibox.css("width")) / n.maxLoop,
                    r = 0;
                for (r = 0; r < n.maxLoop; r++) {
                    i += "<div class='marker' style='left:" + u * r + "px'></div>"
                }
                for ($("#reading-marker").html(i), i = "", "", r = 0; r < n.bonusList.length; r++) {
                    i += "<div class='marker' style='left:" + u * n.bonusList[r].loopIndex + "px; width:" + u + "px'></div>"
                }
                $("#reading-marker-bonus").html(i)
            }
        }, this.createRecordBlock()
    },
    RenderRAF = function(e, t) {
        var o, i, n = e || -1,
            s = t || function() {},
            a = !1;

        function u() {
            if (a) return !1;
            o = requestAnimationFrame(u), s()
        }
        this.start = function(e) {
            a = !1, 0, 1e3 / (n = e || n), i = Date.now(), i, u()
        }, this.stop = function() {
            a = !0, cancelAnimationFrame(o)
        }
    },
    Spinner = {
        $bt: null,
        $svg: null,
        xlink: "",
        add: function(e) {
            notnull(e) && (this.$bt = e, this.$svg = this.$bt.find("svg use"), this.$svg.length > 0 && (this.xlink = this.$svg.attr("xlink:href"), this.$svg.attr("xlink:href", "#ic-loader")), this.$bt.addClass("spin"))
        },
        reset: function() {
            notnull(this.$bt) && this.$bt.removeClass("spin"), notnull(this.$svg) && this.$svg.length > 0 && this.$svg.attr("xlink:href", this.xlink), this.$bt = null, this.$svg = null, this.xlink = ""
        }
    };

function CanvasObj(e) {
    var t, o = this;
    return this.id = e, this.div = document.getElementById(e), this.context = this.div.getContext("2d"), this.width = this.div.offsetWidth, this.height = this.div.offsetHeight, this.saveImage = function() {
        t = o.context.getImageData(0, 0, o.width, o.height)
    }, this.showImage = function() {
        o.clear(), o.context.putImageData(t, 0, 0)
    }, this.clear = function() {
        o.context.clearRect(0, 0, o.width, o.height)
    }, this
}

function estimateSpeed() {}
var $focused, $visibleScroll, focusList = [],
    focusPos = -1,
    focusHistory = [];

function initFocusEvent() {
    appBrowserExpo || (document.addEventListener("keydown", keyDown, !1), $(document).on(evtPress, removeFocus))
}

function killFocusEvent() {
    appBrowserExpo || (document.removeEventListener("keydown", keyDown, !1), $(document).off(evtPress, removeFocus))
}

function keyDown(e) {
    var t = e.key.toLowerCase();
    e.shiftKey && 9 == e.keyCode || (9 == e.keyCode && e.preventDefault(), 27 == e.keyCode && e.preventDefault(), 38 == e.keyCode && e.preventDefault(), 40 == e.keyCode && e.preventDefault(), $("input").is(":focus") || (13 == e.keyCode && e.preventDefault(), 37 == e.keyCode && e.preventDefault(), 39 == e.keyCode && e.preventDefault()), hitKey(t))
}

function nextFocus() {
    if (focusPos++, "playlist-boxline" == focusHistory[focusHistory.length - 1]) {
        focusPos = focusPos > focusList.length - 1 ? focusList.length - 1 : focusPos;
        var e = $visibleScroll.find(".line.focused").index();
        e > 0 && $visibleScroll[0].scroll({
            top: 116 * e,
            left: 0,
            behavior: "smooth"
        })
    } else focusPos = focusPos > focusList.length - 1 ? 0 : focusPos;
    addFocus()
}

function prevFocus() {
    if (focusPos--, "playlist-boxline" == focusHistory[focusHistory.length - 1]) {
        focusPos = focusPos < 0 ? 0 : focusPos;
        var e = $visibleScroll.find(".line.focused").index();
        e > 0 && $visibleScroll[0].scroll({
            top: 116 * e - 232,
            left: 0,
            behavior: "smooth"
        })
    } else focusPos = focusPos < 0 ? focusList.length - 1 : focusPos;
    addFocus()
}

function addFocus(e) {
    notnull($focused) && ($focused.removeClass("focused"), $focused = null), notnull(e) && (focusPos = e), focusList.length > 0 && ($focused = focusList[focusPos].toFocus).addClass("focused")
}

function removeFocus() {
    notnull($focused) && ($focused.removeClass("focused"), $focused = null, focusPos = -1)
}

function enterFocus() {
    notnull($focused) && (notnull(focusList[focusPos].onEnter) ? focusList[focusPos].onEnter() : notnull(focusList[focusPos].toClick) ? focusList[focusPos].toClick.trigger(evtClick.split(" ")[0]) : focusList[focusPos].toFocus.trigger(evtClick.split(" ")[0]))
}

function deleteFocus() {
    if ("popup-menu-exit" == focusHistory[focusHistory.length - 1]) return !1;
    notnull($focused) && ($focused.removeClass("focused"), $focused = null), focusList = [], focusPos = -1
}

function hitKey(e) {
    switch (e) {
        case "tab":
            $("input").is(":focus") && blurAll(), nextFocus();
            break;
        case "enter":
            if (isnull($focused) && "pop-safe-code" == focusHistory[focusHistory.length - 1]) return focusList[10].toFocus.trigger(evtClick.split(" ")[0]), !1;
            $("input").hasClass("focused") && $("input").is(":focus") && (blurAll(), nextFocus()), enterFocus();
            break;
        case "escape":
            if ($("input").is(":focus")) return blurAll(), !1;
            if (appDesktop) return removeFocus(), boxMenu.isOpen() ? (boxMenu.close(), !1) : (popupMenuExit(), !1);
            if (notnull($focused)) return removeFocus(), !1;
            if (pageApp && pause) return !1;
            if (boxDialog.isOpen()) return !1;
            if (pageApp && $lockAll.hasClass("show")) return !1;
            if ("pop-safe-code" == focusHistory[focusHistory.length - 1]) return boxPopup.close(), !1;
            if ("popup-album" == focusHistory[focusHistory.length - 1]) return boxAlbum.close(), !1;
            if ("popup-switch" == focusHistory[focusHistory.length - 1]) return boxSwitch.close(), !1;
            if (boxInfo.isOpen()) return "popup-info" == focusHistory[focusHistory.length - 1] ? boxInfo.close() : createFocus("popup-info", 0), !1;
            if (boxParam.isOpen()) return "popup-param" == focusHistory[focusHistory.length - 1] ? boxParam.close() : createFocus("popup-param", 0), !1;
            if (pageApp && boxPopup.isOpen()) return boxPopup.$popup.hasClass("action") || boxPopup.$popup.hasClass("action-back") ? boxPopup.$popup.find("span.icon").trigger(evtClick.split(" ")[0]) : boxPopup.close(), !1;
            if (pageApp && $mixlist.isOpen()) {
                if ("playlist-line-open" == focusHistory[focusHistory.length - 1]) return $lineOpened.trigger(evtPress.split(" ")[0]).trigger(evtPressEnd.split(" ")[0]), !1;
                if ("playlist-boxline" == focusHistory[focusHistory.length - 1]) return createFocus("popup-playlist", 0), !1;
                if ("playlist-boxfilter" == focusHistory[focusHistory.length - 1]) return createFocus("popup-playlist", 0), !1;
                if ("popup-playlist" == focusHistory[focusHistory.length - 1]) return closePlaylist(), !1
            }
            break;
        case " ":
            !(pageApp && onGame && loopOn) || $lockAll.hasClass("show") || void 0 !== boxMenu && boxMenu.isOpen() || $btClock.trigger(evtClick.split(" ")[0]);
            break;
        case "arrowright":
            $("input").is(":focus") || nextFocus();
            break;
        case "arrowleft":
            $("input").is(":focus") || prevFocus();
            break;
        case "arrowdown":
            $("input").is(":focus") || nextFocus();
            break;
        case "arrowup":
            $("input").is(":focus") || prevFocus();
            break;
        case "1":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[0].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "2":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[1].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "3":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[2].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "4":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[3].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "5":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[4].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "6":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[5].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "7":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[6].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "8":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[7].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "9":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[8].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "0":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && focusList[9].toFocus.trigger(evtClick.split(" ")[0]);
            break;
        case "backspace":
            "pop-safe-code" == focusHistory[focusHistory.length - 1] && boxPopup.$popup.find(".text").text("_ _ _ _")
    }
}

function createFocus(e, t, o) {
    if (appDesktop && boxMenu.isOpen() && "popup-menu-exit" != e) return removeInArray("popup-menu-exit", focusHistory), focusHistory.push(e), focusHistory.push("popup-menu-exit"), !1;
    if (boxDialog.isOpen() && "popup-dialog" != e) return removeInArray("popup-dialog", focusHistory), focusHistory.push(e), focusHistory.push("popup-dialog"), !1;
    if (deleteFocus(), appDesktop && "popup-menu-exit" == e && (boxMenu.$popup.find(".bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), focusList.push({
            toFocus: boxMenu.$popup.find("span.icon")
        })), pageApp && "home" == e && ($homeBtAlbum.length > 0 && focusList.push({
            toFocus: $homeBtAlbum.find(".bck"),
            toClick: $homeBtAlbum
        }), focusList.push({
            toFocus: $homeBtInfo.find(".bck"),
            toClick: $homeBtInfo
        }), focusList.push({
            toFocus: $homeBtParam.find(".bck"),
            toClick: $homeBtParam
        }), focusList.push({
            toFocus: $homeBtSwitch.find(".bck"),
            toClick: $homeBtSwitch
        }), focusList.push({
            toFocus: $homeBtPlay.find(".bck"),
            onEnter: function() {
                $homeBtPlay.trigger("click")
            }
        }), focusList.push({
            toFocus: $homeBtList.find(".bck"),
            onEnter: function() {
                $homeBtList.trigger("click")
            }
        })), "popup-album" == e && focusList.push({
            toFocus: $("#bt-album")
        }), "popup-info" == e && $("#pop-info .box-tab .tab").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "pop-tuto" == e && $("#pop-info #pop-tuto .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), "pop-credit" == e && $("#pop-info #pop-credit .bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "pop-follow" == e && ($("#pop-info #pop-follow .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), focusList.push({
            toFocus: $("#pop-info #pop-follow #img-shop")
        })), "popup-param" == e && $("#pop-param .box-tab .tab").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "pop-language" == e && $("#pop-param #pop-language .bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "pop-setting" == e && $("#pop-param #pop-setting .bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "pop-safe-code" == e && (boxPopup.$popup.find(".bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "index-select" == e && ($("#sp-select .icon:not(.open)").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".img"),
                toClick: $(this)
            })
        }), focusList.push({
            toFocus: $("#home-bt-info").find(".bck"),
            toClick: $("#home-bt-info")
        }), focusList.push({
            toFocus: $("#home-bt-param").find(".bck"),
            toClick: $("#home-bt-param")
        })), "popup-switch" == e && $("#sp-select .icon:not(.open)").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".img"),
                toClick: $(this)
            })
        }), "toolbar" == e && (focusList.push({
            toFocus: $btTool.find(".bck"),
            toClick: $btTool
        }), focusList.push({
            toFocus: $btClock
        })), "toolbar-open" == e && $("#game #box-bt1 .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), "game-paused" == e && ("visible" == $lockPause.css("visibility") ? focusList.push({
            toFocus: $lockPause.find("#bt-resume"),
            toClick: $lockPause
        }) : focusList.push({
            toFocus: $btClock
        })), "mode-replay" == e && (focusList.push({
            toFocus: $btTool.find(".bck"),
            toClick: $btTool
        }), focusList.push({
            toFocus: $btClock
        }), "visible" === $btSave.css("visibility") ? focusList.push({
            toFocus: $btSave.find(".bck"),
            toClick: $btSave
        }) : $btLike.is(":visible") && focusList.push({
            toFocus: $btLike.find(".bck"),
            toClick: $btLike
        })), "popup-record-complete" == e && (boxPopup.$popup.find(".box-bt-haut .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "popup-save-form" == e && (boxPopup.$popup.find(".formzone .formline input").each(function(e) {
            var t = $(this);
            focusList.push({
                toFocus: t,
                onEnter: function() {
                    var e = t.val().length;
                    t.focus(), t[0].setSelectionRange(e, e)
                }
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find(".bt-onofftext")
        }), focusList.push({
            toFocus: boxPopup.$popup.find(".bt.valid").find(".bck"),
            toClick: boxPopup.$popup.find(".bt.valid")
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "popup-mix-saved" == e && (boxPopup.$popup.find(".box-bt-haut .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "popup-global-share" == e && (boxPopup.$popup.find(".box-bt-haut .bt").each(function(e) {
            focusList.push({
                toFocus: $(this).find(".bck"),
                toClick: $(this)
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "popup-email-form" == e && (boxPopup.$popup.find(".formzone .formline input").each(function(e) {
            var t = $(this);
            focusList.push({
                toFocus: t,
                onEnter: function() {
                    var e = t.val().length;
                    t.focus(), t[0].setSelectionRange(e, e)
                }
            })
        }), focusList.push({
            toFocus: boxPopup.$popup.find(".bt.valid").find(".bck"),
            toClick: boxPopup.$popup.find(".bt.valid")
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })), "popup-convert-mix" == e && focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        }), "popup-convert-mix-ready" == e) {
        var i = boxPopup.$popup.find("#bt-save-file");
        focusList.push({
            toFocus: i.find(".bck"),
            onEnter: function() {
                i[0].click()
            }
        }), focusList.push({
            toFocus: boxPopup.$popup.find("span.icon")
        })
    }
    if ("popup-dialog" == e && $("#pop-dialog .bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "popup-playlist" == e && $("#mixlist .tabbox .tab").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "playlist-boxfilter" == e) {
        var n = $("#mixlist .boxfilter:visible");
        n.find(".bt-mini").each(function(e) {
            focusList.push({
                toFocus: $(this)
            })
        }), "searchbox" === n.attr("id") && (focusList.push({
            toFocus: n.find(".formline input"),
            onEnter: function() {
                n.find(".formline input").focus()
            }
        }), focusList.push({
            toFocus: n.find(".bt.search").find(".bck"),
            toClick: n.find(".bt.search")
        }))
    }
    "playlist-boxline" == e && ($visibleScroll = $("#mixlist .scroll:visible")).find(".line").each(function(e) {
        var t = $(this);
        focusList.push({
            toFocus: t,
            onEnter: function() {
                t.trigger(evtPress.split(" ")[0]).trigger(evtPressEnd.split(" ")[0])
            }
        })
    }), "playlist-line-open" == e && $lineOpened.find(".box-action .bt").each(function(e) {
        focusList.push({
            toFocus: $(this).find(".bck"),
            toClick: $(this)
        })
    });
    var s = [];
    for (var a in focusList) isVisible(focusList[a]) && s.push(focusList[a]);
    focusList = s, e != focusHistory[focusHistory.length - 1] && focusHistory.push(e), focusHistory.length > 5 && focusHistory.shift(), notnull(t) && addFocus(t), notnull(o) && (focusPos = o)
}

function isVisible(e) {
    if (notnull(e)) {
        var t = notnull(e.toClick) ? e.toClick : e.toFocus;
        return "hidden" != t.css("visibility") && "none" != t.css("display")
    }
    return !1
}

function initParam() {
    isHdefMode() && ($("body").addClass("hdefmode"), $("#pop-setting #param-hdef .bt-mini").addClass("active")), isDarkMode() && ($("body").addClass("darkmode"), $("#pop-setting #param-dark .bt-mini").addClass("active")), isSafeMode() && ($("body").addClass("safemode"), $("#pop-setting #param-safe .bt-mini").addClass("active")), $("#pop-setting #param-hdef .bt-mini").on(evtClick, clickbtParamHdef).parent().find(".ic-info").on(evtClick, clickbtParamHdefInfo), $("#pop-setting #param-dark .bt-mini").on(evtClick, clickbtParamDark), $("#pop-setting #param-safe .bt-mini").on(evtClick, clickbtParamSafe).parent().find(".ic-info").on(evtClick, clickbtParamSafeInfo), $("#pop-setting #param-reset .bt-mini").on(evtClick, clickbtParamReset).parent().find(".ic-info").on(evtClick, clickbtParamResetInfo), $("#pop-setting #param-recover .bt-mini").on(evtClick, clickbtParamRecover).parent().find(".ic-info").on(evtClick, clickbtParamRecoverInfo)
}

function isHdefMode() {
    return !(null == storage.getItem("param-hdef"))
}

function isDarkMode() {
    return !(null == storage.getItem("param-dark"))
}

function isSafeMode() {
    return !(null == storage.getItem("param-safe"))
}

function clickbtParamHdef(e) {
    e.preventDefault(), isHdefMode() ? (storage.removeItem("param-hdef"), $("#pop-setting #param-hdef .bt-mini").removeClass("active")) : (storage.setItem("param-hdef"), $("#pop-setting #param-hdef .bt-mini").addClass("active")), $("#fade-all").addClass("black"), addTransition($("#fade-all"), "fadeIn", "opacity", function() {
        location.reload()
    })
}

function clickbtParamHdefInfo(e) {
    e.preventDefault();
    var t = isHdefMode() ? STR("bt.exitModeHD") : STR("bt.enterModeHD");
    boxDialog.open(t, "", [STR("bt.gotit")], [])
}

function clickbtParamDark(e) {
    e.preventDefault(), isDarkMode() ? (storage.removeItem("param-dark"), $body.removeClass("darkmode"), $("#pop-setting #param-dark .bt-mini").removeClass("active")) : (storage.setItem("param-dark"), $body.addClass("darkmode"), $("#pop-setting #param-dark .bt-mini").addClass("active"))
}
var paramsafecode = "";

function clickbtParamSafe(e) {
    e.preventDefault(), deleteFocus(), popupCode()
}

function turnOnSafeMode(e) {
    storage.setItem("param-safe", e), $body.addClass("safemode"), $("#pop-setting #param-safe .bt-mini").addClass("active")
}

function turnOffSafeMode() {
    storage.removeItem("param-safe"), $body.removeClass("safemode"), $("#pop-setting #param-safe .bt-mini").removeClass("active")
}

function popupCode() {
    boxPopup.open({
        name: "safe-code",
        icntype: "action",
        content: function() {
            return `<div class='title'>${isSafeMode()?STR("txt.codeEnter"):STR("txt.codeChoose")}</div>\n\t\t\t\t<div class='text'>_ _ _ _</div>\n\t\t\t\t<div class='content'>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>1</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>2</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>3</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>4</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>5</div><div class='hitzone'></div></div><br>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>6</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>7</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>8</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>9</div><div class='hitzone'></div></div>\n\t\t\t\t\t<div class='bt-mini bt-number soft'><div class='txt'>0</div><div class='hitzone'></div></div><br>\n\t\t\t\t\t<br>\n\t\t\t\t\t<div class='bt-mini light' id='bt-valid-code'><div class='txt'>${STR("bt.ok")}</div><div class='hitzone'></div></div>\n\t\t\t\t</div>`
        },
        onBoxOpenEnd: function() {
            createFocus("pop-safe-code"), isSafeMode(), paramsafecode = "", boxPopup.$icon.on(evtClick, boxPopup.close), boxPopup.$popup.find(".bt-number").on(evtClick, function(e) {
                e.preventDefault();
                var t = boxPopup.$popup.find(".text"),
                    o = t.text(),
                    i = o.indexOf("_");
                i > -1 && t.text(o.replaceAt(i, $(this).text())), isSafeMode() && ("15092009" != (paramsafecode += $(this).text()) && t.text().replace(/ /g, "") != storage.getItem("param-safe") || (turnOffSafeMode(), boxPopup.close())), $(this).hasClass("ontouch") && $(this).removeClass("ontouch").get(0).offsetHeight, $(this).addClass("ontouch").one(animationEnd, function(e) {
                    $(e.target).removeClass("ontouch")
                })
            }), boxPopup.$popup.find("#bt-valid-code").on(evtClick, function(e) {
                var t = boxPopup.$popup.find(".text").text().replace(/ /g, ""); - 1 == t.indexOf("_") ? isSafeMode() ? t == storage.getItem("param-safe") ? (turnOffSafeMode(), boxPopup.close()) : boxPopup.$popup.find(".text").addClass("shake").one(animationEnd, function(e) {
                    paramsafecode = "", $(e.target).text("_ _ _ _").removeClass("shake")
                }) : (turnOnSafeMode(t.replace(/ /g, "")), boxPopup.close()) : boxPopup.$popup.find(".text").addClass("shake").one(animationEnd, function(e) {
                    $(e.target).removeClass("shake")
                })
            })
        },
        onBoxCloseStart: function() {
            removeInArray("pop-safe-code", focusHistory), deleteFocus(), boxPopup.$icon.off(), boxPopup.$popup.find(".bt-mini").off()
        },
        onCloseComplete: function() {
            createFocus(focusHistory[focusHistory.length - 1])
        }
    })
}

function clickbtParamSafeInfo(e) {
    e.preventDefault(), boxDialog.open(STR("pop.paramSafeInfoText"), "", [STR("bt.gotit")], [])
}

function clickbtParamReset(e) {
    e.preventDefault(), storage.removeItem("popup-bonus-next"), storage.removeItem("popup-bonus-unlock");
    for (var t = 1; t <= appTotalVersion; t++) storage.removeItem("v" + t + "-popup-bonus-next"), storage.removeItem("v" + t + "-popup-bonus-unlock"), storage.removeItem("v" + t + "-bonus-complete");
    addTransition($("#fade-all"), "fadeIn", "opacity", function() {
        window.location.href = "undefined" != typeof appNumberVersion ? "?v=" + appNumberVersion : ""
    })
}

function clickbtParamResetInfo(e) {
    e.preventDefault(), boxDialog.open(STR("pop.paramResetInfoText"), "", [STR("bt.gotit")], [])
}

function unlockAllBonus() {
    for (var e = 1; e <= appTotalVersion; e++) storage.setItem("v" + e + "-popup-bonus-next", "ok"), storage.setItem("v" + e + "-popup-bonus-unlock", "ok"), storage.setItem("v" + e + "-bonus-complete", "2");
    addTransition($("#fade-all"), "fadeIn", "opacity", function() {
        window.location.href = "undefined" != typeof appNumberVersion ? "?v=" + appNumberVersion : ""
    })
}

function clickbtParamRecover(e) {
    e.preventDefault(), hasNetwork ? storage.restoreAllMix(!0, function(t) {
        "ok" == t.msg ? boxDialog.open(STR("pop.paramRecoverOkText").replace("%{nb_mix}", t.nb), "", [STR("bt.ok")], []) : boxDialog.open(STR("pop.noCoServerText"), STR("pop.noCoServerTitle"), [STR("bt.ok")], []), $(e.currentTarget).addClass("disable")
    }) : boxDialog.open(STR("pop.noNetworkText"), STR("pop.noNetworkTitle"), [STR("bt.ok")], [])
}

function clickbtParamRecoverInfo(e) {
    e.preventDefault(), boxDialog.open(STR("pop.paramRecoverInfoText"), "", [STR("bt.gotit")], [])
}
var gaShouldTrack = !1,
    gaAlreadySet = !1;

function initAnalytics() {
    if (!appBrowser && !appBrowserDemo && (gaShouldTrack = !0, hasNetwork)) {
        ga("create", "UA-155281781-1", {
            storage: "none",
            clientId: machine.uuid
        }), ga(function(e) {});
        var e = "incredibox-" + machine.osTiny;
        e = appCN && isAndroid ? e + "-cn" : e, e = appSQ ? e + "-sq" : e, ga("set", {
            checkProtocolTask: function() {},
            appName: e,
            page: getPageNameGA()
        }), ga("send", "pageview"), gaAlreadySet = !0
    }
}

function saveGA(e, t, o) {
    !appBrowser && hasNetwork && trustAppMobile && (gaAlreadySet ? (o = o || "", ga("send", "event", {
        eventCategory: e,
        eventAction: t,
        eventLabel: o
    })) : initAnalytics())
}

function listenWindowError() {
    window.onerror = function(e, t, o) {
        var i = "Error: " + e + " Script: " + t + " Line: " + o;
        !appBrowser && hasNetwork && gaAlreadySet && ga("send", "exception", {
            exDescription: i,
            exFatal: !1
        })
    }
}
var contextAudio, transitionEnd, animationEnd, $body, boxDialog, boxMenu, boxPopup, boxInfo, boxParam, $nada, $homeBtAlbum, $homeBtInfo, $homeBtParam, $homeBtSwitch, $homeBtPlay, $homeBtList, $btClock, $btTool, $lockPause, $btSave, $btLike, $lineOpened, pageApp = !1,
    onGame = !1,
    loopOn = !1,
    pause = !1,
    appLoaded = !1,
    isMixReplay = !1,
    hasNetwork = !1,
    storage = new LocalStorage,
    cloud = new CloudSync,
    localMixObject = new LocalMixObject;

function onDeviceReady() {
    appBrowser && ($nada = $("#nada"), $homeBtAlbum = $nada, $homeBtInfo = $nada, $homeBtParam = $nada, $homeBtSwitch = $nada, $homeBtPlay = $nada, $homeBtList = $nada, $btClock = $nada, $btTool = $nada, $lockPause = $nada, $btSave = $nada, $btLike = $nada, $lineOpened = $nada), appDesktop ? (document.body.classList.remove("black"), document.body.classList.add("white")) : document.getElementById("fade-all").classList.add("white"), initGlobal(), checkSystem(), resizeApp(), initAnalytics(), initParam(), appBrowser || isIOS || storage.init(), trustAppMobile && (window.open = cordova.InAppBrowser.open, isIOS ? cloud.sync(storage.init) : isAndroid && (launchImmersiveMode(), forcePlaySound(), document.addEventListener("backbutton", function(e) {
        navigator.app.exitApp()
    }, !1), $(document).on(evtClick, function(e) {})));
    var e = trustAppMobile ? document : window;
    e.addEventListener("online", networkOn, !1), e.addEventListener("offline", networkOff, !1), transitionEnd = transitionEndEventName(), animationEnd = animationEndEventName(), $(document).ready(function() {
        isIframe && appBrowser ? callParentWindow("appIsReady") : setTimeout(documentReady, 1e3)
    })
}

function documentReady() {
    initRulesCSS(), $body = $("body"), initFocusEvent(), boxDialog = new BoxDialog("#pop-dialog"), boxPopup = new Popup(".box-popup#pop-popup"), createBtLanguage(), initPopupIndexApp(), appDesktop && (boxMenu = new Popup(".box-popup#pop-menu-exit")), "ok" == checkSupported() ? loadLanguage(function() {
        changeDomTxt(), removeFadeAll(), showPopupPP(afterPP)
    }) : (removeFadeAll(), boxDialog.open(checkSupported(), "ERROR", [], [], !0))
}

function afterPP() {
    checkRatingModul(function() {
        setTimeout(launchAnimation, 2e3)
    })
}

function removeFadeAll() {
    removeTransition($("#fade-all"), "fadeIn", "opacity", function() {
        appMobile && $("#fade-all").removeClass("white")
    })
}

function launchAnimation() {
    checkForMaj(openDialogForceMaj), $("#page-splash #sp-text").html(STR("txt.useHeadphones")), $("#page-splash #sp-title").addClass("titleTweenUp"), $("#page-splash #sp-baseline").addClass("tweenUpHide"), $("#page-splash #sp-headphone").addClass("tweenUp"), $("#page-splash #sp-text").addClass("tweenUp"), setTimeout(function() {
        $("#page-splash #sp-title").addClass("titleTweenUpHide"), $("#page-splash #sp-headphone").addClass("headphoneTweenUpHide"), $("#page-splash #sp-text").addClass("tweenUpHide").one(animationEnd, function() {
            $("#home-bt-info").on(evtClick, function(e) {
                e.preventDefault(), preventAction(popupInfo)
            }).addClass("animate"), $("#home-bt-param").on(evtClick, function(e) {
                e.preventDefault(), preventAction(popupParam)
            }).addClass("animate"), createFocus("index-select"), $("#page-splash").addClass("enabled"), $("#page-splash #sp-text").html(STR("txt.selectVersion")), $("#page-splash #sp-text").removeClass().addClass("tweenUpSelect"), $("#page-splash #sp-select .icon").addClass("tweenUp"), $("#page-splash #sp-select .icon").on(evtClick, function(e) {
                deleteFocus();
                var t = $(this).attr("id").split("icon").join(""),
                    o = "app." + pageExt + "?v=" + t;
                o += withAdBreak ? "&a=1" : "", o += null != getParameterByName("lang") ? "&lang=" + getParameterByName("lang") : "", appBrowser && parseInt(t) > 4 ? dialogGetApp() : ($("#lock-all").addClass("show"), $(this).addClass("open clicked").one(animationEnd, function() {
                    addTransition($("#fade-all"), "fadeIn", "opacity", function() {
                        isIframe && appBrowser && !withAdBreak ? window.top.appEvent("switchVerison", {
                            id: t
                        }) : gotoAppUrl(o)
                    })
                }))
            })
        })
    }, 3200)
}

function checkRatingModul(e) {
    var t, o = 0,
        i = "ratemsg",
        n = !1;
    if (!appMobile && !appDesktop || !hasNetwork || isSafeMode() || appSQ || "steam" == store) e();
    else {
        if (isnull(storage.getItem(i)) && storage.setItem(i, "true:0"), !isnull(t = storage.getItem(i))) {
            var s = String(t).split(":"),
                a = Boolean("true" == s[0]);
            o = Number(s[1]), a && (++o >= 5 ? (n = !0, boxDialog.open(STR("pop.rateText"), STR("pop.rateTitle"), [STR("bt.nope"), STR("bt.later"), STR("bt.sure")], [function() {
                u(1)
            }, function() {
                u(2)
            }, function() {
                u(3)
            }]), saveGA("popup", "rate_app")) : storage.setItem(i, "true:" + String(o)))
        }
        n || e()
    }

    function u(t) {
        if (1 == t) storage.setItem(i, "false:0"), saveGA("popup", "rate_app", "no");
        else if (2 == t) storage.removeItem(i), saveGA("popup", "rate_app", "later");
        else {
            storage.removeItem(i), saveGA("popup", "rate_app", "ok"), openURL(isIOS || appDesktop && isOSX ? build.getInfo().urlRate : build.getInfo().url)
        }
        e()
    }
}

function reinitRatingModul() {
    storage.setItem("ratemsg", "true:0")
}

function forcePlaySound() {
    if (isAndroid) {
        var e = window.AudioContext || window.webkitAudioContext || window.mozAudioContext || window.oAudioContext || window.msAudioContext;
        e && (contextAudio = new e), loadSnd("snd/soundtest." + sndtype, contextAudio, function(e) {
            var t = new SoundObject(contextAudio);
            t.prepare(e, 0), t.play()
        }, function() {})
    }
}

function showPopupPP(e) {
    e()
}
document.addEventListener(trustAppMobile ? "deviceready" : "DOMContentLoaded", onDeviceReady, !1);