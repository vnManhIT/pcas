<!-- BEGIN: view_cat -->
<!-- BEGIN: added -->
<script type="text/javascript">
window.setTimeout(ShowBasket,500);
</script>
<!-- END: added -->
<script type="text/javascript">
function stringval(id){
	var str = document.getElementById(id).value;
	var n = str.replace(/'/g,"");
	var m = n.replace(/\"/g, "");
	document.getElementById(id).value =m;
}
</script>
<script type="text/javascript">
	$(document).ready(function()
{
	var loader = $('#loader');
	//Fade in the Popup and add close button
		
		//Set the center alignment padding + border
		var loaderTop = ($(loader).height() + 24) / 2; 
		var loaderLeft = ($(loader).width() + 24) / 2; 
		$(loader).css({ 
			'margin-top' : -loaderTop,
			'margin-left' : -loaderLeft
		});
    jQuery.ajaxSetup({
  beforeSend: function() {
     $('#loader').show();
  },
  complete: function(){
     $('#loader').hide();
  },
  success: function() {}
});
});
     </script>
<div class="maindiv breadbg">
  <div class=" maincenter"> <a href="index.php"><img alt="" src="skins/{VAL_SKIN}/styleImages/home3.jpg" /></a> / 
    Repairs </div>
</div>
<div class="maindiv mainbody">
  <div class="maincenter">
    <div class="maincontent" style="border:1px solid #EAEAEA; float:left"> 
    
      <!-- BEGIN: cate_true -->
      <div class="make quick_price_review">  <a href="quick-prices/info_41.html" class="maketitle ">Quick Price</a> </div>
      <div class="mainpricebox" id="make">
       <div id="loader"></div>
        <h2 class="tit" onclick="togglethis('make_1');" >Who makes your device. </h2>
       
        
         <div id="make_1" style="float:left;">
        <!-- BEGIN: cat_true -->
       
        <div class="detailbox55" onclick="loaddevices('{TXT_CAT_ID}','1','ch{TXT_CAT_ID}');">
          <div class="makeimg"> <img src="{IMG_CURENT_CATEGORY}" alt="{TXT_CAT_TITLE}"  />
            <div class="make" id="ch{TXT_CAT_ID}"> <span class="maketitle" >{TXT_CAT_TITLE}</span> </div>
          </div>
        </div>
     
        <!-- END: cat_true --> 
           </div>
      </div>
      <div class="mainpricebox" id="devices"> </div>
      <div class="mainpricebox" id="model"> </div>
      <div class="mainpricebox" id="problems"> </div>
      <div class="mainpricebox" id="problemdetail">
        <h2 class="tit" id="probtree" style="text-align:left;"></h2>
        <div class="leftboxd"> <span id="problemtit">Water Damage
          Repair</span> <span id="problemprice">$66.00</span>
          {ABOUT_REPAIR}
          <img alt="" src="skins/{VAL_SKIN}/styleImages/logo.png" /> </div>
        <div class="rightrbox">
          {HOW_ITS_WORK}
            <p class="contactup">If you need a quote on more than one repair, please <a href="" style="color:#000; text-decoration:underline" id="contactus">contact us directly.</a></p>
            <a href="" id="repairid" class="orderrepair">Continue</a> 
            <!--<form action="{CURRENT_URL}" method="post" id="prod{PRODUCT_ID}" name="addtobasket" target="_self">
          <input type="hidden" value="" name="add"  />
          <input type="submit" class="orderrepair" value="Continue" />
          </form>--> 
          </div>
        </div>
      </div>
      
      <!-- END: cate_true --> 
      <!-- BEGIN: contactus -->
      <div class="maindiv mainbox ">
        <center>
          <label class="title txt-purple txt24"> Feel free to drop us an email below and we'll make sure to get back to you quickly.</label>
        </center>
        
        <!-- BEGIN: error -->
        <p id="tdstatus" class="txtError" style="margin-left:10px; width:96%">{VAL_ERROR}</p>
        <!-- END: error -->
        <form action="" method="post" id="frmContactus" name="frmContactus" class="formValidation">
          <div class="loginleft" style="margin-top:30px; border:none;">
            <div class="maindiv">
              <label class="txt18 txt-grey maindiv">{LANG_NAME}</label>
              <div class="txtboxmain"> <span class="txtboxmain-left"></span>
                <input type="text"  name="name" id="name" value="{VAL_NAME}" />
                <span class="txtboxmain-right"> <span class="mandatory"></span> </span> </div>
            </div>
            <div class="maindiv">
              <label class="txt18 txt-grey maindiv">{LANG_EMAIL}</label>
              <div class="txtboxmain"> <span class="txtboxmain-left"></span>
                <input type="text"  name="email" id="email" value="{VAL_EMAIL}"  />
                <span class="txtboxmain-right"> <span class="mandatory"></span> </span> </div>
            </div>
            <div class="maindiv">
              <label class="txt18 txt-grey maindiv">{LANG_PHONE}</label>
              <div class="txtboxmain"> <span class="txtboxmain-left"></span>
                <input type="text"  name="phone" id="phone" value="{VAL_PHONE}"  />
                <span class="txtboxmain-right"> <span class="mandatory"></span> </span> </div>
            </div>
            <div class="maindiv">
              <label class="txt18 txt-grey maindiv">{LANG_DEVICE}</label>
              <div class="txtboxmain"> <span class="txtboxmain-left"></span>
                <input type="text"  name="device" id="phone" value="{VAL_DEVICE}"  />
                <span class="txtboxmain-right"> <span class="mandatory"></span> </span> </div>
            </div>
            <div class="maindiv">
              <label class="txt18 txt-grey maindiv">{LANG_COMMENTS}</label>
              <div class="txtboxmain txtboxmain2"> <span class="txtboxmain-left txtboxmain-left2"></span>
                <textarea name="msg"  id="msg"   class="textarea"  cols="1" rows="1" style="width:404px">{VAL_COMMENTS}</textarea>
                <span class="txtboxmain-right txtboxmain-right2"> <span class="mandatory"></span> </span> </div>
            </div>
          </div>
          <div  class="loginright loginrightc "  > <span class="submitlogin button radius3px">Our Location</span> {DOC_CONTENT} </div>
          <div class="maindiv footerlogin">
            <input type="submit"  class="submitlogin button radius3px"   value="Submit"  style="margin:12px 0 0 20px" />
          </div>
        </form>
        <!-- BEGIN: map_true --> 
      <div class="map_can">
        <div id="map" style="width: 940px; height: 400px;"></div>
      </div>
      <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
  <script type="text/javascript">
 //<![CDATA[
    var locations = [
      ['{VAL_TIT2}', '{VAL_LATITUDE2}','{VAL_LONGITUDE2}', 2],
	  ['{VAL_TIT}', '{VAL_LATITUDE}','{VAL_LONGITUDE}', 1]
    ];

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: new google.maps.LatLng('{VAL_LATITUDE2}','{VAL_LONGITUDE2}'),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
	//]]>
  </script>
    <!-- END: map_true --> 
      </div>
      <!-- END: contactus --> 
      <!-- BEGIN: procedure -->
      <div class="mainpricebox testmain">
        <div style="margin-left:0px;" class="price-column repair-description first span8">
         <!-- BEGIN: pickup_true -->
          <div>
            <h3 class="tit">{PICK_UP_NAME}</h3>
            {PICK_UP_TEXT}
            <a  class="orderrepair smallb" href="{PICK_UP}">We'll come to you</a> </div>
             <!-- END: pickup_true -->
              <!-- BEGIN: mailin_true -->
          <div>
          <h3 class="tit">{MAIL_IN_NAME}</h3>
            {MAIL_IN_TEXT}
            <p> <a href="{MAIL_IN}" class="orderrepair smallb">Securely mail your device to us.</a> </p>
            <a  class="orderrepair smallb" href="{CONTACT_PICK_UP}">Just contact us with any questions.</a> </div>
             <!-- END: mailin_true -->
              <!-- BEGIN: procedure_false -->
       <p>Currently There is No Available Service</p>
        <!-- END: procedure_false -->
        </div>
      </div>
      <!-- END: procedure --> 
      <!-- BEGIN: pick_up -->
      <div class="mainpricebox testmain">
        <div style="margin-left:0px" class="price-column repair-description first span8">
          <h2>{PICK_UP_TITLE}</h2><br />
         {PICK_UP_DETAIL}
          <!-- BEGIN: errors -->
          <div class="alert alert-error"> 
            <!-- BEGIN: error -->
            <p>{VAL_ERROR}</p>
            <!-- END: error --> 
            <!-- BEGIN: info -->
            <p>{VAL_INFO}</p>
            <!-- END: info --> 
          </div>
          <!-- END: errors --> 
          <!-- BEGIN: addtobasket -->
          <form method="post" id="new_repair" class="new_repair" action="{CURRENT_URL}"  style="margin-top:25px;">
            <p>We can Repair this device</p>
            <input type="hidden" value="{PRO_ID}" name="addrepair"  />
            <input type="hidden" value="{CATE}" name="productOptions[Device]"  />
            <input type="hidden" value="{PICK_UP}" name="productOptions[Pickup]"  />
            <input type="hidden" value="{DROP}" name="productOptions[Dropoff]"  />
            <input type="hidden" value="{POST_CODE}" name="productOptions[postcode]"  />
            <p>
              <input type="submit" value="Order Now " name="commit" class="orderrepair">
            </p>
          </form>
          <!-- END: addtobasket -->
          <form method="post" id="new_repair" class="new_repair" action="{CURRENT_URL}"  style="margin-top:25px;">
            <p>
              <label for="repair_postcode">Postcode</label>
              <input type="text" size="30" name="repair[postcode]" id="repair_postcode" class="textbox" style="width:245px;" required="required">
            </p>
            <p>
              <label for="repair_pickup_time">Pickup time</label>
              <select  name="repair[pickup_time]" id="repair_pickup_time" class="textbox">
                
                <!-- BEGIN: frmrepeat_date -->
                <optgroup label="{DAY_GROUP}"></optgroup>
                <!-- BEGIN: frmrepeat_time -->
                <option value="{DAY_TIME_VALUE}">{DAY_TIME}</option>
                <!-- END: frmrepeat_time --> 
                <!-- END: frmrepeat_date -->
              </select>
            </p>
            <p>
              <label for="repair_dropoff_time">Dropoff time</label>
              <select  name="repair[dropof_time]" id="repair_pickup_time" class="textbox">
                
                <!-- BEGIN: repeat_date -->
                <optgroup label="{DAY_GROUP}"></optgroup>
                <!-- BEGIN: repeat_time -->
                <option value="{DAY_TIME_VALUE}">{DAY_TIME}</option>
                <!-- END: repeat_time --> 
                <!-- END: repeat_date -->
              </select>
            </p>
            <script>
                $(function() {
                  var old_repair_dropoff_html = $("#repair_dropoff_time").html();
                  $("#repair_pickup_time").change(function() {
                    var time = $(this).val();
                    $("#repair_dropoff_time").html(old_repair_dropoff_html);
                    $("#repair_dropoff_time option").each(function() {
                      var me = $(this);
                      if(me.val() &lt;= time) {
                        me.remove();
                      }
                    });
                    $("#repair_dropoff_time optgroup").each(function() {
                      if($(this).children().size() == 0) {
                        $(this).remove();
                      }
                    });
                  })
                });          
                </script>
            <p>
              <input type="submit" value="Continue " name="commit" class="orderrepair">
             
         
            </p>
          </form>
        </div>
      </div>
      <!-- END: pick_up --> 
      <!-- BEGIN: mailin -->
      <div class="mainpricebox testmain">
      <h2>{MAIL_IN_TITLE}</h2><br />
        {MAIL_IN_DETAIL}
 
          <form method="post" id="new_repair" class="new_repair" action="{CURRENT_URL}"  style="margin-top:25px;">
        <p>
        <input type="hidden" value="{CATE}" name="productOptions[Device]"  />
        <input type="hidden" value="{PRO_ID}" name="addrepair"  />
              <label for="repair_imei">IMEI:</label>
              <input type="text" size="30" name="productOptions[imei]" onchange="stringval('txtimei');" id="txtimeii"  onkeypress="return isNumberKey(event)" class="textbox" style="width:245px;"  maxlength="15"></p>
          <p>    <label for="repair_imei">Serial Number:</label>
              <input type="text" size="30" name="productOptions[Serial]"  class="textbox" style="width:245px;"  maxlength="15">
            </p>
             <p>
              <label for="repair_Coments">Comments:</label>
              <textarea name="productOptions[Coments]" class="textbox" style="width:245px; height:100px;" onchange="stringval('coments');"  id="coments"></textarea>
            </p>
        <p> <input type="submit" class="orderrepair" name="commit" value="Order Now "></p>
        </form>
      </div>
      <!-- END: mailin --> 
      
    </div>
  </div>

<!-- END: view_cat --> 

