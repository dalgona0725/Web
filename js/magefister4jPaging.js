(function($) {

    $.fn.magefister4jPaging = function(options) {
        var opts = $.extend({},$.fn.magefister4jPaging.defaults,options);
        var original = this;
        var action = {
            init : function() {
                var totalPage = Math.ceil(opts.totalSize/opts.pageSize);
                var totalPageList = Math.ceil(totalPage/opts.pageListSize);
                var pageList = Math.ceil(opts.pageNo/opts.pageListSize);
                if (pageList < 1) pageList = 1;
                if (pageList > totalPageList) pageList = totalPageList;
                var startPageList = (pageList - 1) * opts.pageListSize + 1;
                var endPageList = startPageList + opts.pageListSize - 1;

                if (startPageList < 1) startPageList = 1;
                if (endPageList > totalPage) endPageList = totalPage;
                if (endPageList < 1) endPageList = 1;

                var innerHTML = action.getPageItemLink((startPageList - 1), '<span class="mR5">&lt;</span>이전 <em>10</em>개', (startPageList > 1), 'prev', true);

                for (var i = startPageList; i <= endPageList; i++) {
                    innerHTML += action.getNumberLink(i, null, (opts.pageNo != i), ((opts.pageNo == i)? 'active': ''));
                }

                innerHTML += action.getPageItemLink((endPageList + 1), '다음 <em>10</em>개<span class="mL5">&gt;</span>',(endPageList < totalPage), 'next', true);

                $(original).html(innerHTML);
            },
            getNumberLink : function(pageNo, text, useLink, className) {
                if (useLink) {
                    return '<li><a href="javascript:'+opts.pageClickFunctionName+'(' + pageNo + ');">' + ((text != null && text != '')? text: pageNo) + '</a></li>\n';

                }
                else {
                    return '<li><a ' + ((className != null && className != '')? ' class="' + className + '"': '') +'>' +
                            ((text != null && text != '')? text: pageNo) +
                            '</a></li>\n';
                }
            },
            getPageItemLink : function(pageNo, text, useLink, className, linkOpen) {
                if(linkOpen) {
                    if(useLink) {
                        return '<li><a' + ((className != null && className != '')? ' class="' + className + '"': '') +
                                ' href="javascript:'+opts.pageClickFunctionName+'(' + pageNo + ');">' +
                                ((text != null && text != '')? text: pageNo) +
                                '</a></li>\n';
                    } else {
                        return '<li><a' + ((className != null && className != '')? ' class="' + className + '"': '') +
                                ' href="javascript:void(0);">' +
                                ((text != null && text != '')? text: pageNo) +
                                '</a></li>\n';
                    }

                } else {
                    if(opts.showUnlinkedSymbols) {
                        return '<li>' +
                                    ((text != null && text != '')? text: pageNo) +
                                '</li>\n';
                    } else {
                        return '\n';
                    }
                }
            }
        };

        action.init();
    };

    $.fn.magefister4jPaging.defaults = {
        totalSize : 0,      // total size
        pageNo : 1,         // current page No
        pageSize : 10,     // list per page count
        pageListSize : 5,  // page bar count 1 2 3 4 5
        pageClickFunctionName : 'page_click',
        showUnlinkedSymbols : true
    };

})(jQuery);
