/**
 * 
 */

function getMemberInfo(){
    $.ajax({
        type : 'post',
        url : 'getMemberInfo.do',
        success : function(data) {
            var obj =JSON.parse(data);
            sessionCheck(obj);
        },
        error : function(e){
            console.log(e);
        }
    })
}