/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
       $(".img1").mouseover(function(){
               $(this).animate({
                      width :"+=80px",  //Trong ngoặc Phải ghi sát mới chịu
                      height :"+=80px"
               },100)
        })
        .mouseout(function(){
               $(this).animate({
                      width :"-=80px",  //Trong ngoặc Phải ghi sát mới chịu
                      height :"-=80px"
               },100)
        })
})

function xoatour(tourId){      
        if(confirm("Bạn có chắc muốn xóa không?") === true)
            window.location.href = ("/QuanLyTourDuLich/admin/delete/"+tourId);  
}
