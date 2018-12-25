/**
 * Created by Richard on 2016/12/13.
 */

/**
 * Pym Parent
 */
function initPymParent(parentContainerId, childUrl, isSub) {
    var parentContainerPymObj = new pym.Parent(parentContainerId, childUrl, {});

    parentContainerPymObj.onMessage('height', function(height) {
        $('#'+parentContainerId).find('iframe').attr('height', height+'px');
    });
    parentContainerPymObj.onMessage(parentContainerId, function(height) {
        $('#'+parentContainerId).find('iframe').attr('height', height+'px');
    });


    return parentContainerPymObj;
}

/**
 * Pym Child
 */
function initPymChild(parentContainerId) {
    var childIframePymObj = new pym.Child();

    if(parentContainerId===null || parentContainerId.length===0) {
        // e.g.：#bTabs_li_9718E3FF6E8E4476B29062CFDBEB7DB1
        parentContainerId=$(window.parent.document).find('ul#ulTabNavs>li.active').find('a').attr('href').replace('#','');
    }
    // 定义一个固定最小高度
    var height=$('body').height()<804?804:$('body').height();
    $('div.page-container').css('min-height',height);
    childIframePymObj.sendMessage(parentContainerId, height);


    return childIframePymObj;
}



/**
 * iframe 尺寸调整
 */
function initPgHeightInFrameByPYM(_h, tabContId) {
    if(typeof(tabContId)=='undefined'){
        tabContId=$(window.parent.document).find('ul#ulTabNavs>li.active').attr('id').replace('liTabNav','divTabCont');
    }

    var pymChild = new pym.Child({ id:tabContId});
    var h=$(window.parent.window).height()-$(window.parent.document).find('div.page-header').height()-$(window.parent.document).find('ul#ulTabNavs').height()-$(window.parent.document).find('div.page-footer').height()-_h;
    $('body').css('min-height',h);
    $('div.page-content').css('min-height',h);
    pymChild.sendHeight(h);
}

/**
 * 表格高度
 * @param heightOffset
 * @returns {number}
 */
function getPageContentHeight(heightOffset) {
    return $(window.parent.window).height()-$(window.parent.document).find('div.page-header').height()-$(window.parent.document).find('ul#ulTabNavs').height()-$(window.parent.document).find('div.page-footer').height()-heightOffset;
}

/**
 * 冒泡排序
 * @param a
 * @param b
 * @returns {number}
 */
function sortNumber(a,b){
    return a - b;
}

/**
 * 设置控件标签文字
 * @param obj
 * @param txt
 */
function setLableText(obj, txt) {
    obj.text('').text(txt);
}

/**
 * 格式化undefined对象
 * @param obj
 * @returns {*}
 */
function isUndefined(obj) {
    if (typeof(obj)!=='undefined' && obj!=='undefined') {
        return obj;
    }
    return '';
}

/**
 * 将8位日期字符（如：20170101）转换为日期
 * @param date
 * @constructor
 */
function Parse8BitDateCharIntoTypicalDateFmt(date,splitChar) {
    var y=date.substr(0,4);
    var m=date.substr(4,2);
    var d=date.substr(6,2);

    return y+splitChar+m+splitChar+d;
}

/**
 * json转换URL参数
 * @param json
 */
function JsonToParam(json) {
    return Object.keys(json).map(function (key) {
        return encodeURIComponent(key) + "=" + encodeURIComponent(json[key]);
    }).join("&");
}

/**
 * 生成报表说明内容
 * @param rptName
 */
function fillModalBody(rptName) {
    var jsonObj = eval(rptName+'_json');
    var modalTitleObj = $('#rpt_modal').find('div.modal-header>h4').eq(0);
    var modalTableObj = $('#rpt_modal').find('div.modal-body>table').eq(0);
    var modalTableHeadTrNoteObj = modalTableObj.find('thead>tr.rpt-note').eq(0);
    var modalTableHeadTrHeaderObj = modalTableObj.find('thead>tr.rpt-header').eq(0);
    var modalTableBodyObj = modalTableObj.find('tbody').eq(0);

    //填充标题
    modalTitleObj.empty().append('<i class="fa fa-info-circle"></i>').append(jsonObj.tblTitle);

    //填充thead
    //填充note
    if(typeof(jsonObj.tblNote)!='undefined') {
        var noteTh = $('<th colspan="'+ jsonObj.tblNote.note_csp +'"></th>');
        var headOl = $('<ol></ol>');
        $.each(jsonObj.tblNote.content, function (i) {
            var headLi = $('<li>' + jsonObj.tblNote.content[i] + '</li>');
            headOl.append(headLi);
        });
        modalTableHeadTrNoteObj.empty().append(noteTh.empty().append(headOl));
    }
    //header
    modalTableHeadTrHeaderObj.empty();
    $.each(jsonObj.tblHeader, function(i,o){
        var th=null;
        if(o.colspan!="-1"){
            th=$('<th colspan="'+ o.colspan +'">'+ o.name +'</th>');
        } else {
            th=$('<th>'+ o.name +'</th>');
        }

        modalTableHeadTrHeaderObj.append(th);
    });

    //填充tbody
    modalTableBodyObj.empty();
    $.each(jsonObj.tblContent, function(i,o){
        var tr=$('<tr></tr>');
        //-----------------------------------------------------------
        //名称
        //-----------------------------------------------------------
        var tdName= null;
        if(o.celluseage.use_subname) {
            if(o.celluseage.use_name) {
                //有name
                tdName=$('<td>'+ o.name +'</td><td>'+ o.subname +'</td>');
                if(o.cellspan.name_sp.rsp>0) {
                    tdName.eq(0).attr("rowspan",o.cellspan.name_sp.rsp);
                }
            }else {
                //无name
                tdName=$('<td>'+ o.subname +'</td>');
            }
        }else {
            //无subname的表格：只有name，无rowspan(-1)
            tdName=$('<td>'+ o.name +'</td>');
            tdName.attr("colspan", o.cellspan.name_sp.csp);
        }

        //-----------------------------------------------------------
        // 定义
        //-----------------------------------------------------------
        var tdDef=null;
        if(o.celluseage.use_def) {
            tdDef = $('<td>' + o.def + '</td>');
        }
        //-----------------------------------------------------------
        //指标计算逻辑
        //-----------------------------------------------------------
        var tdCalc=null;
        if(o.celluseage.use_calc) {
            if (o.cellspan.calc_rsp != -1) {
                tdCalc = $('<td>' + o.calc + '</td>');
                if (o.cellspan.calc_rsp > 0) {
                    tdCalc.attr("rowspan", o.cellspan.calc_rsp);
                }
            }
        }
        //-----------------------------------------------------------
        //备注
        //-----------------------------------------------------------
        var tdRremark=null;
        if(o.celluseage.use_rmk) {
            if (o.cellspan.remark_rsp != -1) {
                tdRremark = $('<td>' + o.remark + '</td>');
                if (o.cellspan.remark_rsp > 0) {
                    tdRremark.attr("rowspan", o.cellspan.remark_rsp);
                }
            }
        }

        tr.append(tdName).append(tdDef).append(tdCalc).append(tdRremark);
        modalTableBodyObj.append(tr);
    });
}