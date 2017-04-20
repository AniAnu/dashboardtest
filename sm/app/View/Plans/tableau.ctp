
 <script>
  $('.jqte-test').jqte();
  
  // settings of status
  var jqteStatus = true;
  $(".status").click(function()
  { 
    jqteStatus = jqteStatus ? false : true;
    $('.jqte-test').jqte({"status" : jqteStatus})
  });
</script>
<script>

$(document).ready(function(){

  function mise(type)
  { 
    ligne=-1;
      colone=-1;
 $('#example').find('tr').each(function(il,el) {
ligne++;
 });
  $('#example').find('th').each(function(il,el) {
colone++;
 });
  if(type=="colone")
  {
    colone+=1;
  }
    
  else{
    ligne+=1;
  }
    
  var coordonner=Array(ligne,colone);
    $.ajax({
  type: "POST",
  url:"sm/plans/tableau/"+coordonner
}).done(function(result) {
     $("#table_id").html(result);
 });

  }




 $('.plusLigne').click(function(){
  mise("ligne");
  });
 $('.plusColone').click(function(){
  mise("colone");
  });
 



  var color;
 $('.cp1').colorpicker({
  })
    .on('change.color', function(evt, color){
        colors=$(this).val();
        var index = $(this).attr('id');
       colors=colors.substring(1);
       var coordonners=$("#NBRCOLONE").val();
       var liste=Array(index,colors,coordonners);
         $.ajax({
         type: "POST",
         url:"sm/plans/colors/"+liste
      })
         $("#refersh").show();
    })
    .on('mouseover.color', function(evt, color){
            if(color){
                $(this).parent().parent().css('background-color',color);
                 $(this).parent().css('background-color',color);

            }
    });
 RowSorter('table', {
    handler: 'td.sorter',
    stickFirstRow : true,
    stickLastRow  : false,
    onDragStart: function(tbody, row, index){},
    onDrop: function(tbody, row, new_index, old_index){
    alert(tbody+"-"+row+"-"+"-"+new_index+"-"+old_index) ;}

}); 


 $('.fa-arrows-h').click(function(){
$("#example").colResizable({
    liveDrag:true, 
      gripInnerHtml:"<div class='grip'></div>", 
      draggingClass:"dragging", 
            resizeMode:'fit'
        });
 });
  function callback() {
      setTimeout(function() {
        $( ".notificationdiv:visible" ).removeAttr( "style" ).fadeOut();
      }, 1000 );
    };
  $('.composantVertical').dblclick(function(){
var coordonners=$(this).attr('id');
var type=$("#"+coordonners.split(',')[1]).val();
var liste=Array(coordonners,type);
if(type=="")
{
$(".notificationdiv").html("<div><a><i class='fa fa-exclamation-triangle' aria-hidden='true'></i></a>Select Type Component SVP!!</div>");
$(".notificationdiv").show('drop',null,500,callback);
}else if(type=="Budget")
  {
$.ajax({
  type: "POST",
  url:"sm/plans/budget/"+liste
}).done(function(result) {
     $("#detail").html(result);
     $("#detail").show();
 });
  }else if(type=="Jobs"){
$.ajax({
  type: "POST",
  url:"sm/plans/jobs/"+liste
}).done(function(result) {
     $("#detail").html(result);
     $("#detail").show();
 });
  }else if(type=="Resources"){
$.ajax({
  type: "POST",
  url:"sm/plans/resources/"+liste
}).done(function(result) {
     $("#detail").html(result);
     $("#detail").show();
 });
  }else
   {
$.ajax({
  type: "POST",
  url:"sm/plans/composant/"+liste
}).done(function(result) {
     $("#detail").html(result);
     $("#detail").show();
 });
}
 });
$('.input2').focus(function(){
$(this).val("");
});
$('.input2').focusout(function(){
var color=$(this).val();
var colone=$(this).attr('id');
var coordonners=$("#NBRCOLONE").val();
var liste=Array(colone,color,coordonners);
$.ajax({
  type: "POST",
  url:"sm/plans/typeCom/"+liste
})
$("#refersh").show();
 });

$('.dis').click(function(){
  var display=$(this).attr('id');
var coordonners=$("#NBRCOLONE").val();
liste=Array(display,coordonners);
$.ajax({
  type: "POST",
  url:"sm/plans/displaycol/"+liste
})
$("#refersh").show();
 });
$("#bilel").on('change',function(){
  $('table').css( "font-size", $(this).val()+"px" );
})

$(".del").click(function(){
var id=$(this).attr("attr");
var cor=$("#NBRCOLONE").val();
var liste = Array(cor,id);
alert(liste);
$.ajax({
  type: "POST",
  url:"sm/plans/deletecolone/"+liste
})
$("#refersh").show();
})



$(".blockage_cellule").click(function(){
  var liste;
  if($(".fa-unlock-alt1").is(':visible'))
  {
    $(".fa-unlock-alt1").hide();
    $(".fa-unlock1").show(); 
type="block"   
  }else
  {
    $(".fa-unlock-alt1").show();
    $(".fa-unlock1").hide(); 
     type="none"
  }
   var liste=type+","+$(this).attr("attrblock");
   alert(liste)
$.ajax({
  type: "POST",
  url:"sm/plans/blockagecellule/"+liste
})
})


});

</script>

<input type="hidden" value="<?php echo $coordonners[0].','.$coordonners[1]; ?>" id="NBRCOLONE">
<style>
table.sorting-table {cursor: move;}
table tr.sorting-row td {background-color: #8b8;}
table td.sorter {background-color:rgb(71, 76, 68); width: 5px; cursor: move; height: 50px;}
</style>
<table border="2"id="example"  cellspacing="0" 
style="color: black;background: rgba(240, 248, 255, 0.86);border: 3px solid;border-color: #e6dbea;width: 100%;margin-top: 20px;">
        <thead>
            <tr>
              <th class="sorter"></th>
              <?php for ($i=1; $i <$coordonners[1]+1 ; $i++) { 
               ?>
                <th> 
                  <div class='colorcp'style="display:nones;float: right;margin-top: -19px;margin-right: 47px;">
                   <input class="cp1" id="<?php echo '0,'.$i; ?>" type="hidden"/>
                 </div>
                <i class="fa fa-plus-circle plusColone"  aria-hidden="true" style="pointer-events: <?php echo $TableTails[0][0]['duplicate'] ?>"></i>    
                   <?php if($TableTails[0][$i]['display']=="none"){ ?>
                   <i class="fa fa-eye dis"  aria-hidden="true" id="<?php echo $i ?>.block"></i>
                   <i class="fa fa-minus-circle del" aria-hidden="true" attr="<?php echo $i ?>"style="pointer-events: <?php echo $TableTails[0][0]['duplicate'] ?>"></i>
                  <?php } else { ?>
                   <i class="fa fa-eye-slash dis"  aria-hidden="true" id="<?php echo $i ?>.none"></i>
                   <i class="fa fa-minus-circle del" aria-hidden="true" attr="<?php echo $i ?>"style="pointer-events: <?php echo $TableTails[0][0]['duplicate'] ?>"></i>
                   

                   <?php }?>
                </th>
               <?php }?>
            </tr>
            <tr id="typecomposante">
              <td class="sorter"> <i class="fa fa-plus-circle plusLigne" style="margin-top: 11px;pointer-events: <?php echo $TableTails[0][0]['duplicate'] ?>"aria-hidden="true" ></i>  </td>
              <?php for ($i=0; $i <$coordonners[1] ; $i++) { 
               ?>
                <td bgcolor="<?php  echo $TableTails[0][$i+1]['color'];?>"> 
                 
   <input list="query" style="background-color: rgba(0,0,0,0);display:<?php echo $TableTails[0][$i+1]['display']?>;pointer-events: <?php echo $TableTails[0][$i+1]['duplicate'] ?>"placeholder='Select type component' class="form-control input2" id="<?php echo $i+1;?>" 
   value="<?php  echo explode('-',$TableTails[1][$i+1]['type'])[0];?>"
   />
              </td>
               <?php }?>
            </tr>
        </thead>
        <tbody>
<?php for ($i=2; $i <$coordonners[0]+1 ; $i++) { ?>
<tr>
  <td class="sorter">
<i class="fa fa-minus-circle del-ligne" aria-hidden="true" attr="<?php echo $i ?>"style="pointer-events: <?php echo $TableTails[0][0]['duplicate'] ?>"></i>
    <i class="fa fa-plus-circle plusLigne"  aria-hidden="true" id="Add"></i>
    <div style="margin-left: -17px;position: absolute; margin-top: -6px;">
    <input class="cp1" id="<?php echo $i.',0'; ?>" type="hidden"/> 
  </div>
  </td>
  <?php for ($j=1; $j <$coordonners[1]+1 ; $j++) {
   $index=($coordonners[1]+1)*$i+$j;?>
  <td bgcolor="<?php  echo $TableTails[$i][$j]['color'];?>" class="tdevent" >
    <div class="divoutilcellule"style="float:right;width: 15px;height: 100%;background: rgba(54, 68, 62, 0.2);display:none" >
       <input type="checkbox" class="checkbox" style=" float: right;display:none" id="<?php echo $i.','.$j ?>">
    <input class="cp1" type="hidden" id="<?php echo $i.','.$j ?>"/>
    <i class="fa fa-unlock-alt fa-unlock-alt1 blockage_cellule" attrblock="<?php echo $i.','.$j ?>" aria-hidden="true" style="display:none"></i>
   <i class="fa fa-unlock fa-unlock1 blockage_cellule" attrblock="<?php echo $i.','.$j ?>" aria-hidden="true" ></i>
</div>
<div class="composantVertical" style="min-height:50px;min-width:50px;display:<?php echo $TableTails[0][$j]['display'] ?>;pointer-events: <?php echo $TableTails[$i][$j]['duplicate'] ?>;"id="<?php echo $i.','.$j ?>">
  <?php 

$x=str_replace("a9a", "/",$TableTails[$i][$j]['data']);
$x=str_replace("..", ":",$x);
$y= html_entity_decode($x);
//echo $y;
  echo htmlspecialchars_decode($y); ?>
</div>

</td>
 <?php }?>
  </tr>
  <?php } ?>
        </tbody>  
    </table>

<div   style="display:none;position: fixed;top: 166px;left: 25%;" id="detail">
        
</div>

