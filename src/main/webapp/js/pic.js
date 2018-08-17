 //file组件change事件
    $('#file').change(function() {
        var eImg = $('#result');
        eImg.attr('src', getObjectURL($(this)[0].files[0])); // 或 this.files[0] this->input
    });


    //预览图片
    function getObjectURL(file) {
        var url = null ;
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url ;
    }