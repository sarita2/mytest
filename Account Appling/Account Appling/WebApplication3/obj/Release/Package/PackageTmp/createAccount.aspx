<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="WebApplication3.createAccount" %>


<!DOCTYPE html>

<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="fonts/stylesheet.css" media="all" />
    <link rel="stylesheet" href="css/bootstarp.min.css">
    <link rel="stylesheet" href="date-picker/datepicker.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="date-picker/datepicker.js"></script>


    <style type="text/css">
        h1 {
            font-family: db_helvethaica_x55_regular, cordia_newregular;
            font-size: 22pt;
            font-style: normal;
            font-weight: bold;
            color: black;
            text-align: center;
            text-decoration: underline
        }

        table, th, td {
            font-family: cordia new;
            color: black;
            font-size: 11pt;
            font-style: normal;
            text-align:;
            background-color: #FFFFFF;
            border-collapse: collapse;
            border: 3px solid white
        }

            table.inner {
                border: 0px
            }

        legend {
            padding: 0.2em 0.5em;
            border: 1px white;
            color: white;
            font-size: 16px;
            text-align: left;
            background-color: #00664f;
        }
    </style>
    <style>
        /* This is a comment it is not read by any browser
          This is where the css styling goes */

        body {
            height: 750px;
            margin: 4px;
            padding: 4px;
        }

        #container {
            width: 1000px;
            margin: 0 auto;
            height: 100%;
        }
    </style>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
        }

            .tg td {
                font-family: cordia_newregular;
                font-size: 14pt;
                padding: 13px 20px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg th {
                font-family: cordia_newregular;
                font-size: 14pt;
                font-weight: normal;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg .tg-y2tu {
                font-weight: bold;
                text-decoration: underline;
                vertical-align: top
            }

            .tg .tg-buov {
                font-weight: bold;
                background-color: #00664f;
                color: #ffffff;
                text-align: left;
                vertical-align: top;
                padding: 15px;
            }

            .tg .tg-baqh {
                text-align: left;
                vertical-align: top
            }

            .tg .tg-h31u {
                font-family: cordia_newregular !important;
                ;
                vertical-align: top
            }

            .tg .tg-d55q {
                font-weight: bold;
                font-size: 14pt;
                vertical-align: top
            }

            .tg .tg-c240 {
                background-color: #00664f;
                color: #ffffff;
                text-align: center;
                vertical-align: top
            }

            .tg .tg-114v {
                font-weight: bold;
                font-size: 14pt;
                vertical-align: top
            }

            .tg .tg-yw4l {
                vertical-align: top
            }

            .tg .tg-9hbo {
                font-weight: bold;
                vertical-align: top
            }

            .tg .tg-fefd {
                color: #000000;
                vertical-align: top
            }

            .tg .tg-3we0 {
                background-color: #ffffff;
                vertical-align: top
            }



        .auto-style2 {
            font-size: x-large;
        }

        #Birthday_Day {
            height: 22px;
            width: 91px;
        }

        #Birthday_Month {
            width: 136px;
        }

        #Birthday_Year {
            width: 110px;
        }



        .auto-style3 {
            font-weight: normal;
        }



        .auto-style4 {
            width: 668px;
        }

        .auto-style5 {
            width: 71px;
        }



        .auto-style6 {
            width: 40px;
        }

        .auto-style7 {
            font-size: medium;
        }

        input[type=number]::-webkit-inner-spin-button, 
        input[type=number]::-webkit-outer-spin-button { 
          -webkit-appearance: none; 
          margin: 0; 
        }
    </style>
    <script type="text/javascript">


        function stopRKey(evt) {
            var evt = (evt) ? evt : ((event) ? event : null);
            var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
            if ((evt.keyCode == 13) && (node.type == "text")) { return false; }
        }

        document.onkeypress = stopRKey;

    </script>
    <script type="text/javascript">

        function Numbers(e) {
            var keynum;
            var keychar;
            var numcheck;
            if (window.event) {// IE
                keynum = e.keyCode;
            }
            else if (e.which) {// Netscape/Firefox/Opera
                keynum = e.which;
            }
            if (keynum == 13 || keynum == 8 || typeof (keynum) == "undefined") {
                return true;
            }
            keychar = String.fromCharCode(keynum);
            numcheck = /^[0-9]$/;
            return numcheck.test(keychar);
        }

        function keyup(obj, e) {
            var keynum;
            var keychar;
            var id = '';
            if (window.event) {// IE
                keynum = e.keyCode;
            }
            else if (e.which) {// Netscape/Firefox/Opera
                keynum = e.which;
            }
            keychar = String.fromCharCode(keynum);

            var tagInput = document.getElementsByTagName('input');
            for (i = 0; i <= tagInput.length; i++) {
                if (tagInput[i] == obj) {
                    var prevObj = tagInput[i - 1];
                    var nextObj = tagInput[i + 1];
                    break;
                }
            }
            if (obj.value.length == 0 && keynum == 8) prevObj.focus();

            if (obj.value.length == obj.getAttribute('maxlength')) {
                for (i = 0; i <= tagInput.length; i++) {
                    if (tagInput[i].id.substring(0, 5) == 'txtID') {
                        if (tagInput[i].value.length == tagInput[i].getAttribute('maxlength')) {
                            id += tagInput[i].value;
                            if (tagInput[i].id == 'txtID5') break;
                        }
                        else {
                            tagInput[i].focus();
                            return;
                        }
                    }
                }
                if (checkID(id)) nextObj.focus();
                else alert('รหัสประชาชนไม่ถูกต้อง');
                document.getElementById('txtID1').focus();
            }

        }

        function checkID(id) {
            if (id.length != 13) return false;
            for (i = 0, sum = 0; i < 12; i++)
                sum += parseFloat(id.charAt(i)) * (13 - i);
            if ((11 - sum % 11) % 10 != parseFloat(id.charAt(12)))
                return false;
            return true;
        }
    </script>

    <script type="text/javascript">


        window.onload = function () {
            document.getElementById('ifYes').style.display = 'none';
            document.getElementById('ifNo').style.display = 'none';
        }
        function yesnoCheck() {
            if (document.getElementById('yesCheck').checked) {
                document.getElementById('ifYes').style.display = 'block';
                document.getElementById('ifNo').style.display = 'none';
                document.getElementById('redhat1').style.display = 'none';
                document.getElementById('aix1').style.display = 'none';
            }
            else if (document.getElementById('noCheck').checked) {
                document.getElementById('ifNo').style.display = 'block';
                document.getElementById('ifYes').style.display = 'none';
                document.getElementById('redhat1').style.display = 'none';
                document.getElementById('aix1').style.display = 'none';
            }
        }
        function yesnoCheck1() {
            if (document.getElementById('redhat').checked) {
                document.getElementById('redhat1').style.display = 'block';
                document.getElementById('aix1').style.display = 'none';
            }
            if (document.getElementById('aix').checked) {
                document.getElementById('aix1').style.display = 'block';
                document.getElementById('redhat1').style.display = 'none';
            }
        }


        function change() {
            var selectBox = document.getElementById("show");
            var selected = selectBox.options[selectBox.selectedIndex].value;
            var textarea = document.getElementById("text_area");
            if (selected === '1') {
                textarea.show();
            }
            else {
                textarea.hide();
            }
        };

    </script>
    <script>

        function u_type1() {
            document.getElementById("u1_1").style.display = 'inline';
            document.getElementById("u1_2").style.display = 'inline';
            document.getElementById("u1_3").style.display = 'inline';
            document.getElementById("u2_1").style.display = 'none';
            document.getElementById("u2_2").style.display = 'none';
            document.getElementById("u2_3").style.display = 'none';
        }
        function u_type2() {
            document.getElementById("u1_1").style.display = 'none';
            document.getElementById("u1_2").style.display = 'none';
            document.getElementById("u1_3").style.display = 'none';
            document.getElementById("u2_1").style.display = 'inline';
            document.getElementById("u2_2").style.display = 'inline';
            document.getElementById("u2_3").style.display = 'inline';
        }
    </script>

    <script>
        function check_submit() {
            var Myform = document.form;
            if (Myform.u_type.value == "1") {
                if (Myform.t_12.value == "") {
                    alert('กรุณากรอกชื่อ-นามสกุล \n');
                    document.getElementsByName('t_12')[0].focus();
                    return false;
                }
                if (Myform.t_14.value == "") {
                    alert('กรุณากรอก Frist Name-Last Name \n');
                    document.getElementsByName('t_14')[0].focus();
                    return false;
                }
                if (Myform.t_26.value == "") {
                    alert('กรุณากรอกข้อมูลเบอร์โทรศัพท์มือถือ  \n');
                    document.getElementsByName('t_26')[0].focus();
                    return false;
                }
                if (!document.getElementsByName('Job')[0].checked && !document.getElementsByName('Job')[1].checked && !document.getElementsByName('Job')[2].checked && !document.getElementsByName('Job')[3].checked) {
                    alert('กรุณากรอกข้อมูล อาชีพ \n');
                    document.getElementsByName('Job')[0].focus();
                    return false;
                }
                if (Myform.t_36.value == "") {
                    alert('กรุณากรอกข้อมูล ประเภทธุรกิจ \n');
                    document.getElementsByName('t_36')[0].focus();
                    return false;
                }
                if (Myform.t_38.value == "") {
                    alert('กรุณากรอกข้อมูล เงินเดือน\n');
                    document.getElementsByName('t_38')[0].focus();
                    return false;
                }
                if (!document.getElementsByName('YesorNo')[0].checked && !document.getElementsByName('YesorNo')[1].checked) {
                    alert('กรุณาเลือกตำแหน่งทางการเมือง \n');
                    document.getElementsByName('YesorNo')[0].focus();
                    return false;
                }
                if (!document.getElementsByName('yesno')[0].checked && !document.getElementsByName('yesno')[1].checked && !document.getElementsByName('yesno')[2].checked && !document.getElementsByName('yesno')[3].checked) {
                    alert('กรุณากรอกข้อมูล สถานภาพการสมรส \n');
                    document.getElementsByName('yesno')[0].focus();
                    return false;
                }
                if (Myform.yesno.value == "2") {
                    if (Myform.t_43.value == "") {
                        alert('กรุณากรอกชื่อ-นามสกุล คู่สมรส \n');
                        document.getElementsByName('t_43')[0].focus();
                        return false;
                    }
                    if (Myform.t_45.value == "") {
                        alert('กรุณากรอก First Name-Last Name คู่สมรส \n');
                        document.getElementsByName('t_45')[0].focus();
                        return false;
                    }
                    if (Myform.t_56.value == "") {
                        alert('กรุณากรอก เบอร์โทรศัพท์มือถือ คู่สมรส \n');
                        document.getElementsByName('t_56')[0].focus();
                        return false;
                    }
                    if (!document.getElementsByName('Job2')[0].checked && !document.getElementsByName('Job2')[1].checked && !document.getElementsByName('Job2')[2].checked && !document.getElementsByName('Job2')[3].checked) {
                        alert('กรุณากรอก อาชีพ คู่สมรส \n');
                        document.getElementsByName('Job2')[0].focus();
                        return false;
                    }
                    if (Myform.t_65.value == "") {
                        alert('กรุณากรอก ประเภทธุรกิจของคู่สมรส \n');
                        document.getElementsByName('t_65')[0].focus();
                        return false;
                    }
                    if (Myform.t_67.value == "") {
                        alert('กรุณากรอกข้อมูล เงินเดือนคู่สมรส \n');
                        document.getElementsByName('t_67')[0].focus();
                        return false;
                    }
                    if (!document.getElementsByName('YesorNo2')[0].checked && !document.getElementsByName('YesorNo2')[1].checked) {
                        alert('กรุณาเลือกตําเเหน่งทางการเมืองของคู่สมรส \n');
                        document.getElementsByName('YesorNo2')[0].focus();
                        return false;
                    }
                }
            }

            if (Myform.t_96.value == "") {
                alert('กรุณากรอกข้อมูลที่อยู่ปัจจุบัน \n');
                document.getElementsByName('t_96')[0].focus();
                return false;
            }
            if (Myform.t_99.value == "") {
                alert('กรุณากรอกข้อมูลเบอร์โทรศัพท์มือถือ \n');
                document.getElementsByName('t_99')[0].focus();
                return false;
                /* }
                 if (Myform.t_104.value == "") {
                     alert('กรุณากรอกข้อมูล \n');
                     document.getElementsByName('t_104')[0].focus();
                     return false; */
            }
            if (!document.getElementsByName('sendadd')[0].checked && !document.getElementsByName('sendadd')[1].checked && !document.getElementsByName('sendadd')[2].checked && !document.getElementsByName('sendadd')[3].checked) {
                alert('กรุณาเลือกสถานที่จัดส่ง \n');
                document.getElementsByName('sendadd')[0].focus();
                return false;
                /* }
                 if (Myform.t_106.value == "") {
                     alert('กรุณากรอกชื่อ-นามสกุล กรณีติดต่อโดยตรงไม่ได้  \n');
                     document.getElementsByName('t_106')[0].focus();
                     return false;
                 }
                 if (Myform.t_113.value == "") {
                     alert('กรุณากรอกข้อมูล \n');
                     document.getElementsByName('t_113')[0].focus();
                     return false; */
            }

            if (!document.getElementsByName('1')[0].checked && !document.getElementsByName('1')[1].checked) {
                alert('กรุณาเลือกบุคคลที่เกี่ยวข้องกับผู้ขอเปิดบัญชี  \n');
                document.getElementsByName('1')[0].focus();
                return false;
            }
            if (!document.getElementsByName('2')[0].checked && !document.getElementsByName('2')[1].checked) {
                alert('กรุณาเลือกบุคคลที่เกี่ยวข้องกับผู้ขอเปิดบัญชี \n');
                document.getElementsByName('2')[0].focus();
                return false;
            }
            if (!document.getElementsByName('3')[0].checked && !document.getElementsByName('3')[1].checked) {
                alert('กรุณาเลือกบุคคลที่เกี่ยวข้องกับผู้ขอเปิดบัญชี \n');
                document.getElementsByName('3')[0].focus();
                return false;
            }
        }


    </script>

    <script type="text/javascript">
        $(function () {
            $('#staticParent').on('keydown', '#number', function (e) { -1 !== $.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) || /65|67|86|88/.test(e.keyCode) && (!0 === e.ctrlKey || !0 === e.metaKey) || 35 <= e.keyCode && 40 >= e.keyCode || (e.shiftKey || 48 > e.keyCode || 57 < e.keyCode) && (96 > e.keyCode || 105 < e.keyCode) && e.preventDefault() });
        })
    </script>

    <script type="text/javascript" class="2">
        function autoTab2(obj, typeCheck) {
            /* กำหนดรูปแบบข้อความโดยให้ _ แทนค่าอะไรก็ได้ แล้วตามด้วยเครื่องหมาย
            หรือสัญลักษณ์ที่ใช้แบ่ง เช่นกำหนดเป็น  รูปแบบเลขที่บัตรประชาชน
            4-2215-54125-6-12 ก็สามารถกำหนดเป็น  _-____-_____-_-__ 
            รูปแบบเบอร์โทรศัพท์ 08-4521-6521 กำหนดเป็น __-____-____ 
            หรือกำหนดเวลาเช่น 12:45:30 กำหนดเป็น __:__:__
            ตัวอย่างข้างล่างเป็นการกำหนดรูปแบบเลขบัตรประชาชน
            */
            if (typeCheck == 1) {
                var pattern = new String("_-____-_____-_-__"); // กำหนดรูปแบบในนี้
                var pattern_ex = new String("-"); // กำหนดสัญลักษณ์หรือเครื่องหมายที่ใช้แบ่งในนี้     
            } else {
                var pattern = new String("___-___-____"); // กำหนดรูปแบบในนี้
                var pattern_ex = new String("-"); // กำหนดสัญลักษณ์หรือเครื่องหมายที่ใช้แบ่งในนี้                 
            }
            var returnText = new String("");
            var obj_l = obj.value.length;
            var obj_l2 = obj_l - 1;
            for (i = 0; i < pattern.length; i++) {
                if (obj_l2 == i && pattern.charAt(i + 1) == pattern_ex) {
                    returnText += obj.value + pattern_ex;
                    obj.value = returnText;
                }
            }
            if (obj_l >= pattern.length) {
                obj.value = obj.value.substr(0, pattern.length);
            }
        }

</script>
    
 
  
   
   
    
    <TITLE>ใบสมัครเปิดบัญชี</TITLE>
</head>


                 
<body style="margin-left: 5%; margin-right: 5%">

    <div class="container-fluid">
        <div id="staticParent">
            <div id="printableArea">
                      
                <form action="addToDB.aspx" name="form" method="post" onSubmit="return check_submit();" runat="server">
                 
                    <FONT FACE="cordia_newregular" size="3px">

                        <img src="images/CGSlogov3.jpg" style="width: 100%; height: 100%; margin-left: 0px"><div style="height:40px;"></div>
                        <div class="assessment-container container">
                            <div class="row">
                                <div class="col-md-6 form-box">

                                    <center></center>
                                    <div class="form-top">
                                        <div class="form-top-left">

                                        </div>
                                        
                                        <p align="right">วันที่ <input type="text" data-toggle="datepicker" name="draft_date"></p>
                                        <p align="right">ชื่อผู้แนะนำการลงทุน_________________________(สำหรับเจ้าหน้าที่)</p>
                                        <p align="right">รหัสผู้แนะนำการลงทุน_________________________(สำหรับเจ้าหน้าที่)</p>
                                        <p align="right">รหัสลูกค้า_________________________(สำหรับเจ้าหน้าที่)</p>
                                        <p align="center">
                                            <INPUT TYPE="radio" NAME="u_type" value="1" onclick="u_type1();" checked>&nbsp;บุคคลธรรมดา
                                            <INPUT TYPE="radio" NAME="u_type" value="2" onclick="u_type2();">&nbsp;นิติบุคคล
                                        </p><br>
                                        
                                    </div>

                                    <br><table class="tg" border="1" width="100%">
                                        <tr>

                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">ประเภทบัญชี</FONT></th>


                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <INPUT id="cash_checkbox" TYPE="Checkbox" name="account" Value="1 " uncheck>บัญชีเงินสด (Cash)
                                                วงเงิน <INPUT id="cash" TYPE="number"  NAME="t_4" Money="number"     SIZE=17 MAXLENGHT=17><br>

                                                <INPUT id="cash_balance_checkbox" TYPE="Checkbox" name="account1" Value="1" uncheck>บัญชีฝาก (Cash Balance)
                                                วงเงิน <INPUT TYPE="number" id="cash_balance" NAME="t_5" Money="number" SIZE=17 MAXLENGHT=17><br>

                                                <INPUT id="credit_balance_checkbox" TYPE="Checkbox" name="account2" Value="1" uncheck>บัญชีมาร์จิน (Credit Balance)
                                                วงเงิน <INPUT TYPE="number" id="credit_balance" NAME="t_6" Money="number" SIZE=17 MAXLENGHT=17><br>

                                                <INPUT TYPE="Checkbox" id="derivatives_checkbox" name="account3" Value="1" uncheck>บัญชีซื้อขายสัญญาซื้อขายล่วงหน้า (Derivatives)
                                                วงเงิน <INPUT TYPE="number" id="derivatives" NAME="t_7" Money="number" SIZE=17 MAXLENGHT=17><br>

                                                <INPUT TYPE="Checkbox" id="sbl_checkbox" name="account4" Value="1" uncheck>บัญชียืมและให้ยืมหลักทรัพย์ (SBL)
                                                วงเงิน <INPUT TYPE="number" id="sbl" NAME="t_8" Money="number" SIZE=17 MAXLENGHT=17><br>

                                                <INPUT TYPE="Checkbox" id="bond_checkbox" name="account5" Value="1" uncheck>ตราสารหนี้
                                                วงเงิน <INPUT TYPE="number" id="bond" NAME="t_9" Money="number" SIZE=17 MAXLENGHT=17><br>

                                                <INPUT TYPE="Checkbox" name="account6" Value="1" uncheck>บัญชีซื้อขายกองทุน<br>

                                                <INPUT TYPE="Checkbox" name="account7" Value="1" uncheck>อื่นๆ
                                                <INPUT TYPE="TEXT" NAME="t_10" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                <br>
                                                วงเงินรวม <INPUT TYPE="number" id="total_money" NAME="t_11" totalMoney="number" SIZE=17 MAXLENGHT=17>
                                                <script>
                                                    $("#cash, #cash_balance, #derivatives, #credit_balance, #sbl, #bond")
                                                        .keyup(function () {
                                                            var total = 0
                                                            if ($('#cash_checkbox').is(':checked')) {
                                                                total = parseInt($('#cash').val() || 0) + total
                                                            }
                                                            if ($('#cash_balance_checkbox').is(':checked')) {
                                                                total = parseInt($('#cash_balance').val() || 0) + total
                                                            }
                                                            if ($('#credit_balance_checkbox').is(':checked')) {
                                                                total = parseInt($('#credit_balance').val() || 0) + total
                                                            }
                                                            if ($('#derivatives_checkbox').is(':checked')) {
                                                                total = parseInt($('#derivatives').val() || 0) + total
                                                            }
                                                            if ($('#sbl_checkbox').is(':checked')) {
                                                                total = parseInt($('#sbl').val() || 0) + total
                                                            }
                                                            if ($('#bond_checkbox').is(':checked')) {
                                                                total = parseInt($('#bond').val() || 0) + total
                                                            }
                                                            $("#total_money").val(total)
                                                        })
                                                        .keyup();

                                                    $("#cash_checkbox, #cash_balance_checkbox, #credit_balance_checkbox, #derivatives_checkbox, #sbl_checkbox, #bond_checkbox").click(function () {
                                                        var total = 0
                                                        if ($('#cash_checkbox').is(':checked')) {
                                                            total = parseInt($('#cash').val() || 0) + total
                                                        }
                                                        if ($('#cash_balance_checkbox').is(':checked')) {
                                                            total = parseInt($('#cash_balance').val() || 0) + total
                                                        }
                                                        if ($('#credit_balance_checkbox').is(':checked')) {
                                                            total = parseInt($('#credit_balance').val() || 0) + total
                                                        }
                                                        if ($('#derivatives_checkbox').is(':checked')) {
                                                            total = parseInt($('#derivatives').val() || 0) + total
                                                        }
                                                        if ($('#sbl_checkbox').is(':checked')) {
                                                            total = parseInt($('#sbl').val() || 0) + total
                                                        }
                                                        if ($('#bond_checkbox').is(':checked')) {
                                                            total = parseInt($('#bond').val() || 0) + total
                                                        }
                                                        $("#total_money").val(total)
                                                    }); 
                                                </script>

                                            </td>
                                        </tr>
                                    </table>

                                    <br>
                                    <!------------------------------------------------------------------------------ ข้อมูลนักลงทุน -------------------------------------------------------->


                                    <table class="tg" border="1" width="100%" id="u1_2">
                                        <tr>

                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ประวัติลูกค้า / กรณีบุคคลธรรมดา</FONT></th>

                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <INPUT class="sex_th" TYPE="radio" name="sex" Value="1" uncheck>นาย
                                                <INPUT class="sex_th" TYPE="radio" name="sex" Value="2" uncheck>นางสาว
                                                <INPUT class="sex_th" TYPE="radio" name="sex" Value="3" uncheck>นาง
                                                ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_12" SIZE=17 MAXLENGHT=17>
                                                นามสกุล<INPUT TYPE="TEXT" NAME="t_13" SIZE=15 MAXLENGHT=15><br>
                                                <INPUT class="sex_en" TYPE="radio" name="sex1" Value="1" uncheck>Mr.
                                                <INPUT class="sex_en" TYPE="radio" name="sex1" Value="2" uncheck>Mrs.
                                                <INPUT class="sex_en" TYPE="radio" name="sex1" Value="3" uncheck>Ms.
                                                Frist Name<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_14" SIZE=17 MAXLENGHT=17>
                                                Last Name<INPUT TYPE="TEXT" NAME="t_15" SIZE=15 MAXLENGHT=15>
                                                <script>
                                                    $(".sex_th").change(function () {
                                                        const sex = $('input[name=sex]:checked').val();
                                                        $("input[name=sex1]").val([sex]);
                                                    })

                                                    $(".sex_en").change(function () {
                                                        const sex = $('input[name=sex1]:checked').val();
                                                        $("input[name=sex]").val([sex]);
                                                    })
                                                </script>

                                                <!----- วัน เดือน ปีเกิด -------------------------------------------------------->
                                                วัน/เดือน/ปีเกิด&nbsp;

                                                <input name="birthday_date" type="text" data-toggle="datepicker">

                                                <br>




                                                รหัสประจำตัวประชาชน :
                                                <input TYPE="TEXT" NAME="t_16" id="txtID1" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_17" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_18" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_19" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                <input TYPE="TEXT" NAME="t_20" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                <br>
                                                บัตรข้าราชการ 
                                                <INPUT TYPE="TEXT" NAME="t_21" Money="number" SIZE=17 MAXLENGHT=17> สัญชาติ 
                                                <INPUT TYPE="TEXT" NAME="t_22" Money="number" SIZE=17 MAXLENGHT=17>หนังสือเดินทาง 
                                                <INPUT TYPE="TEXT" NAME="t_23" Money="number" SIZE=17 MAXLENGHT=17 style="width: 312px">
                                                <br><font color="red"> ออกเมื่อ </font>
                                                <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="t_24" Money="number" SIZE=17 MAXLENGHT=17>
                                                
                                                <font color="red">วันหมดอายุ </font>
                                                <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="t_25" Money="number" SIZE=17 MAXLENGHT=17>
                                                <br>

                                                โทรศัพท์มือถือ<font color="red">*</font><INPUT TYPE="Numbers" NAME="t_26" id="number" onkeyup="autoTab2(this,2)"><br>

                                                ชื่อสถานที่ทำงาน <INPUT TYPE="TEXT" NAME="t_27" SIZE=40 MAXLENGHT=40><br>

                                                ที่อยู่ที่ทำงาน
                                                <BR>
                                                เลขที่<INPUT TYPE="TEXT" NAME="t_28" SIZE=10 MAXLENGHT=10>
                                                ถนน<INPUT TYPE="TEXT" NAME="t_28_1" SIZE=20 MAXLENGHT=20>
                                                อาคาร<INPUT TYPE="TEXT" NAME="t_28_2" SIZE=20 MAXLENGHT=20>
                                                ซอย<INPUT TYPE="TEXT" NAME="t_28_7" SIZE=20 MAXLENGHT=20 style="width: 123px">
                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_28_3" SIZE=20 MAXLENGHT=20><br>
                                                เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_28_4" SIZE=20 MAXLENGHT=20>
                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_28_5" SIZE=20 MAXLENGHT=20>
                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_28_6" SIZE=5 MAXLENGHT=5>

                                                <br><br>

                                                ที่อยู่ปัจจุบัน
                                                <BR>
                                                เลขที่<INPUT TYPE="TEXT" NAME="t_29" SIZE=10 MAXLENGHT=10>
                                                ถนน<INPUT TYPE="TEXT" NAME="t_30" SIZE=20 MAXLENGHT=20>
                                                อาคาร<INPUT TYPE="TEXT" NAME="t_31" SIZE=20 MAXLENGHT=20>
                                                ซอย<INPUT TYPE="TEXT" NAME="t_31_1" SIZE=20 MAXLENGHT=20>
                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_32" SIZE=20 MAXLENGHT=20><br>
                                                เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_32_1" SIZE=20 MAXLENGHT=20>
                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_32_2" SIZE=20 MAXLENGHT=20>
                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_32_3" SIZE=5 MAXLENGHT=5>
                                                <BR>


                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_33" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_34" id="number"  SIZE=15 MAXLENGHT=15><br>
                                                <br>

                                                <font color="red">*</font>อาชีพ<br>
                                                <INPUT TYPE="radio" name="Job" Value="1 ">เจ้าของกิจการ/ค้าขาย Code 910     กรณีเจ้าของกิจการ (ระบุ) ยอดขายต่อปี<INPUT TYPE="TEXT" NAME="t_127" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                <INPUT TYPE="radio" name="Job" Value="2 ">ลูกจ้าง/พนักงานเอกชน Code 920<br>
                                                <INPUT TYPE="radio" name="Job" Value="3 ">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930<br>
                                                <INPUT TYPE="radio" name="Job" Value="4 ">อื่นๆ (ระบุ) Code 990                   <INPUT TYPE="TEXT" NAME="t_35" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br>
                                                <br>
                                                <font color="red">*</font>ประเภทธุรกิจ<INPUT TYPE="TEXT" NAME="t_36" SIZE=20 MAXLENGHT=20>
                                                ตำแหน่ง<INPUT TYPE="TEXT" NAME="t_37" SIZE=20 MAXLENGHT=20>
                                                <font color="red">*</font>เงินเดือน<INPUT TYPE="number" NAME="t_38" SIZE=10 MAXLENGHT=10><br>
                                                ประสบการณ์ทำงาน<INPUT TYPE="TEXT" NAME="t_39" EXP"TEXT"SIZE=5 MAXLENGHT=5>
                                                รายได้อื่นๆ<INPUT TYPE="number" NAME="t_40" SIZE=10 MAXLENGHT=10>     แหล่งที่มาของรายได้อื่นๆ<INPUT TYPE="TEXT" NAME="t_41" WhereIncome"TEXT"SIZE=5 MAXLENGHT=5><br>

                                                <font color="red">*</font>ตำแหน่งทางการเมือง
                                                <INPUT TYPE="radio" name="YesorNo" Value="1">ไม่มี
                                                <INPUT TYPE="radio" name="YesorNo" Value="2">มี (ระบุ)<INPUT TYPE="TEXT" NAME="t_42" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br>



                                                <!/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                                <script type="text/javascript">

                                                    function yesnoCheck() {
                                                        if (document.getElementById('yesCheck').checked) {
                                                            document.getElementById('ifYes').style.display = 'block';
                                                        }
                                                        else document.getElementById('ifYes').style.display = 'none';

                                                    }

                                                </script>
                                                <H4><font color="red">*</font><span class="auto-style3">สถานภาพการสมรส</span></H4>
                                                <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck" value="1"> โสด <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="yesCheck" value="2"> สมรส <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck" value="3"> หม่าย <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck" value="4"> หย่าร้าง <br>
                                                <div id="ifYes" style="display:none">


                                                    <table class="tg" border="1" width="100%">
                                                        <tr>
                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">ข้อมูลคู่สมรส&nbsp;</span>&nbsp; </FONT></th>

                                                        <tr>
                                                            <td class="tg-h31u" colspan="3">
                                                                <INPUT TYPE="radio" name="sex2" Value="1">นาย
                                                                <INPUT TYPE="radio" name="sex2" Value="2">นางสาว
                                                                <INPUT TYPE="radio" name="sex2" Value="3">นาง
                                                                ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_43" SIZE=17 MAXLENGHT=17>
                                                                นามสกุล<INPUT TYPE="TEXT" NAME="t_44" SIZE=15 MAXLENGHT=15><br>

                                                                <INPUT TYPE="radio" name="sex3" Value="1">Mr.
                                                                <INPUT TYPE="radio" name="sex3" Value="2">Mrs.
                                                                <INPUT TYPE="radio" name="sex3" Value="3">Ms.
                                                                Frist Name<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_45" SIZE=17 MAXLENGHT=17>
                                                                Last Name<INPUT TYPE="TEXT" NAME="t_46" SIZE=15 MAXLENGHT=15><br>
                                                                <!----- วัน เดือน ปีเกิด -------------------------------------------------------->
                                                                วัน/เดือน/ปีเกิด

                                                                 <INPUT data-toggle="datepicker" TYPE="TEXT" NAME="Birthday_day2"  >





                                                                รหัสประจำตัวประชาชน :
                                                                <input TYPE="TEXT" NAME="t_47" id="txtID1" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_48" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_49" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_50" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_51" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                                <br>
                                                                บัตรข้ารการ <INPUT TYPE="TEXT" NAME="t_52" Money="number" SIZE=17 MAXLENGHT=17> สัญชาติ<INPUT TYPE="TEXT" NAME="t_53" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                ออกเมื่อ <INPUT TYPE="TEXT" data-toggle="datepicker"  NAME="t_54">
                                                                วันหมดอายุ <INPUT TYPE="TEXT" data-toggle="datepicker" NAME="t_55"><br>
                                                                โทรศัพท์มือถือ<font color="red">*</font><INPUT TYPE="Numbers" NAME="t_56" id="number" onkeyup="autoTab2(this,2)">

                                                                ชื่อสถานที่ทำงาน<INPUT TYPE="TEXT" NAME="t_57" SIZE=40 MAXLENGHT=40><br>

                                                                ที่อยู่ที่ทำงาน<INPUT TYPE="TEXT" NAME="t_58" SIZE=120 MAXLENGHT=120><br>


                                                                ถนน<INPUT TYPE="TEXT" NAME="t_59" SIZE=40 MAXLENGHT=40>

                                                                อาคาร<INPUT TYPE="TEXT" NAME="t_60" SIZE=40 MAXLENGHT=40>
                                                                ซอย<INPUT TYPE="TEXT" NAME="t_60_1" SIZE=40 MAXLENGHT=40>

                                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_61" SIZE=40 MAXLENGHT=40><br>
                                                                เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_61_1" SIZE=20 MAXLENGHT=20>
                                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_61_2" SIZE=20 MAXLENGHT=20>
                                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_61_3" SIZE=5 MAXLENGHT=5>
                                                                <BR>

                                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_62" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_63" id="number"  SIZE=15 MAXLENGHT=15><br>

                                                                <font color="red">*</font>อาชีพ<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="1 ">เจ้าของกิจการ/ค้าขาย Code 910     กรณีเจ้าของกิจการ(ระบุ)ยอดขายต่อปี<INPUT TYPE="TEXT" NAME="t_128" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                <INPUT TYPE="radio" name="Job2" Value="2 ">ลูกจ้าง/พนักงานเอกชน Code 920<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="3 ">ข้าราชการ/พนักงานรัฐวิสาหกิจ Code 930<br>
                                                                <INPUT TYPE="radio" name="Job2" Value="4">อื่นๆ (ระบุ) Code 990                    <INPUT TYPE="TEXT" NAME="t_64" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br><br>

                                                                <font color="red">*</font>ประเภทธุรกิจ<INPUT TYPE="TEXT" NAME="t_65" SIZE=20 MAXLENGHT=20>
                                                                ตำแหน่ง<INPUT TYPE="TEXT" NAME="t_66" SIZE=20 MAXLENGHT=20>
                                                                <font color="red">*</font>เงินเดือน<INPUT TYPE="number" NAME="t_67" SIZE=10 MAXLENGHT=10><br>
                                                                ประสบการณ์ทำงาน<INPUT TYPE="TEXT" NAME="t_68" EXP"TEXT"SIZE=5 MAXLENGHT=5>
                                                                รายได้อื่นๆ<INPUT TYPE="number" NAME="t_69" SIZE=10 MAXLENGHT=10>     <align ="right">
                                                                    แหล่งที่มาของรายได้อื่นๆ<INPUT TYPE="TEXT" NAME="t_70" WhereIncome"TEXT"SIZE=5 MAXLENGHT=5><br>

                                                                    <font color="red">*</font>ตำแหน่งทางการเมืองของคู่สมรส
                                                                    <INPUT TYPE="radio" name="YesorNo2" Value="1">ไม่มี
                                                                    <INPUT TYPE="radio" name="YesorNo2" Value="2">มี (ระบุ)<INPUT TYPE="TEXT" NAME="t_71" JobOther="TEXT" SIZE=17 MAXLENGHT=17><br>


                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>


                                            </td>
                                        </tr>
                                    </table>
                                    <!////////////////////////////////////////////////////////////////////////////////////////////>
                                    <div style="height:40px;"></div>
                                    <div class="assessment-container container">
                                        <div class="row">
                                            <div class="col-md-6 form-box">

                                                <div id="u2_2" style="display:none;">
                                                    <table class="tg" border="1" width="100%">
                                                        <tr>

                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">ประวัติลูกค้า กรณีนิติบุคคล&nbsp;</span>&nbsp; </FONT></th>
                                                            <div class="form-top">
                                                                <div class="form-top-left">

                                                        <tr>
                                                            <td class="tg-h31u" colspan="3">
                                                                <INPUT TYPE="radio" name="company1" Value="1 ">บริษัทจำกัด
                                                                <INPUT TYPE="radio" name="company1" Value="2 ">ห้างหุ้นส่วนจำกัด
                                                                <INPUT TYPE="radio" name="company1" Value="3">ห้างหุ้นส่วนสามัญนิติบุคคล
                                                                <INPUT TYPE="radio" name="company1" Value="4 ">บริษัทมหาชน
                                                                <INPUT TYPE="radio" name="company1" Value="5">อื่นๆ <INPUT TYPE="TEXT" NAME="t_72" NAME="compa2" SIZE=15 MAXLENGHT=15><br>
                                                                ชื่อ-นามสกุล<INPUT TYPE="TEXT" NAME="t_73" SIZE=80 MAXLENGHT=80><br>
                                                                สัญชาติ<INPUT TYPE="TEXT" NAME="t_74" SIZE=20 MAXLENGHT=20> ทะเบียนเลขที่<INPUT TYPE="TEXT" NAME="t_75" SIZE=20 MAXLENGHT=20><br>
                                                                วันที่จดทะเบียน<INPUT TYPE="TEXT" data-toggle="datepicker" NAME="t_76" SIZE=20 MAXLENGHT=20> ประเทศที่จดทะเบียน<INPUT TYPE="TEXT" NAME="t_77" SIZE=20 MAXLENGHT=20><br>
                                                                เลขประจำตัวผู้เสียภาษี<INPUT TYPE="TEXT" NAME="t_78" SIZE=20 MAXLENGHT=20><br>
                                                                ประเภทธุรกิจ(โปรดระบุ)<INPUT TYPE="TEXT" NAME="t_79" SIZE=20 MAXLENGHT=20><br>
                                                                ทุนจดทะเบียน<INPUT TYPE="TEXT" NAME="t_80" SIZE=20 MAXLENGHT=20><br>
                                                                ทุนจดทะเบียนชำระแล้ว<INPUT TYPE="TEXT" NAME="t_81" SIZE=20 MAXLENGHT=20>
                                                                <br>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                    </table>




                                                    <FONT FACE="db_helvethaica_x55_regular">กรณีผู้ถือหุ้นตั้งแต่ร้อยละ 30 เป็นนิติบุคคล กรุณาระบุหรือแนบรายละเอียดการถือหุ้นในทอดต่อไป</FONT></th><br>
                                                    <INPUT TYPE="TEXT" NAME="t_82" NAME="ADDRESS" SIZE=120 MAXLENGHT=120>
                                                    <INPUT TYPE="TEXT" NAME="t_83" NAME="ADDRESS" SIZE=120 MAXLENGHT=120>
                                                    <br>
                                                    <br>
                                                    <br>
                                                </div>
                                                <div id="u2_3" style="display:none;">
                                                    <table class="tg" border="1" width="100%" style="width:100%">
                                                        <tr>
                                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">รายละเอียดของบุคคลผู้รับมอบอำนาจ&nbsp;</span>&nbsp; </FONT></th>
                                                            <br>
                                                        <tr>
                                                            <td class="tg-h31u" colspan="3" width="100%">
                                                                ชื่อ<INPUT TYPE="TEXT" NAME="t_84" NAME="ADDRESS" SIZE=80 MAXLENGHT=80><br>
                                                                <INPUT TYPE="Checkbox" name="visa" Value="1">บัตรประชาชน
                                                                รหัสประจำตัวประชาชน :
                                                                <input TYPE="TEXT" NAME="t_85" id="txtID1" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_86" id="txtID2" style="width:35px" maxlength=4 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_87" id="txtID3" style="width:40px" maxlength=5 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_88" id="txtID4" style="width:20px" maxlength=2 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" /> -
                                                                <input TYPE="TEXT" NAME="t_89" id="txtID5" style="width:12px" maxlength=1 onkeyup="keyup(this,event)" onkeypress="return Numbers(event)" />
                                                                <br>

                                                                <INPUT TYPE="Checkbox" name="visa2" Value="1">บัตรข้าราชการ<INPUT TYPE="TEXT" NAME="t_90" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                <INPUT TYPE="Checkbox" name="visa3" Value="1">อื่นๆ <INPUT TYPE="TEXT" NAME="t_91" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                สัญชาติ<INPUT TYPE="TEXT" NAME="t_92" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                ออกเมื่อ <INPUT TYPE="TEXT" data-toggle="datepicker" NAME="t_93" Money="number" SIZE=17 MAXLENGHT=17>
                                                                วันหมดอายุ <INPUT TYPE="TEXT" data-toggle="datepicker" NAME="t_94" Money="number" SIZE=17 MAXLENGHT=17><br>
                                                                ความสัมพันธ์กับลูกค้า <INPUT TYPE="TEXT" NAME="t_95" Money="number" SIZE=17 MAXLENGHT=17>



                                                </div>

                                            </div>

                                            </td>
                                            </tr>
                                            </table>
                                        </div>
                                        <!/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                        <div style="height:40px;"></div>
                                        <div class="assessment-container container">
                                            <div class="row">
                                                <div class="col-md-6 form-box">

                                                    <table class="tg" border="1" width="100%">
                                                        <tr><th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ข้อมูลที่อยู่</FONT></th>

                                                        <tr>
                                                            <td class="tg-h31u" colspan="3">

                                                                <font color="red">*</font>ที่อยู่ปัจจุบัน<br>
                                                                เลขที่<INPUT TYPE="TEXT" NAME="t_96" SIZE=10 MAXLENGHT=10>
                                                                ถนน<INPUT TYPE="TEXT" NAME="t_96_1" SIZE=20 MAXLENGHT=20>
                                                                อาคาร<INPUT TYPE="TEXT" NAME="t_96_2" SIZE=20 MAXLENGHT=20>
                                                                ซอย<INPUT TYPE="TEXT" NAME="t_96_7" SIZE=20 MAXLENGHT=20>
                                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_96_3" SIZE=20 MAXLENGHT=20>
                                                                <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_96_4" SIZE=20 MAXLENGHT=20>
                                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_96_5" SIZE=20 MAXLENGHT=20>
                                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_96_6" SIZE=5 MAXLENGHT=5>

                                                                <br>

                                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_97" SIZE=15 MAXLENGHT=20>โทรสาร<INPUT TYPE="Numbers" NAME="t_98" SIZE=15 MAXLENGHT=15>

                                                                <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_99" id="number" onkeyup="autoTab2(this,2)">E-mail<INPUT TYPE="TEXT" NAME="t_100" NAME="E-mail" SIZE=15 MAXLENGHT=20><br>


                                                                <br>
                                                                ที่อยู่อื่นๆ<br>
                                                                เลขที่<INPUT TYPE="TEXT" NAME="t_101" SIZE=10 MAXLENGHT=10>
                                                                ถนน<INPUT TYPE="TEXT" NAME="t_101_1" SIZE=20 MAXLENGHT=20>
                                                                อาคาร<INPUT TYPE="TEXT" NAME="t_101_2" SIZE=20 MAXLENGHT=20>
                                                                ซอย<INPUT TYPE="TEXT" NAME="t_101_7" SIZE=20 MAXLENGHT=20>
                                                                แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_101_3" SIZE=20 MAXLENGHT=20>
                                                                <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_101_4" SIZE=20 MAXLENGHT=20>
                                                                จังหวัด<INPUT TYPE="TEXT" NAME="t_101_5" SIZE=20 MAXLENGHT=20>
                                                                รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_101_6" SIZE=5 MAXLENGHT=5>
                                                                <BR>
                                                                โทรศัพท์<INPUT TYPE="Numbers" NAME="t_102" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_103" id="number" SIZE=15 MAXLENGHT=15>

                                                                <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_104" id="number" onkeyup="autoTab2(this,2)">E-mail<INPUT TYPE="TEXT" NAME="t_105" SIZE=15 MAXLENGHT=15>
                                                                <br>
                                                                <font color="red">*</font>สถานที่จัดส่งเอกสาร


                                                                <INPUT TYPE="radio" name="sendadd" Value="1">ที่อยู่ปัจจุบัน
                                                                <INPUT TYPE="radio" name="sendadd" Value="2">ที่อยู่ที่ทำงาน
                                                                <INPUT TYPE="radio" name="sendadd" Value="3">ที่อยู่ตามทะเบียนบ้าน
                                                                <INPUT TYPE="radio" name="sendadd" Value="4">ที่อยู่อื่นๆ


                                                            </td>
                                                        </tr>
                                                    </table>


                                                    <!///////////////////////////////////////////////////////////////////////////////////!>

                                                    <div style="height:40px;"></div>
                                                    <div class="assessment-container container">
                                                        <div class="row">
                                                            <div class="col-md-6 form-box">


                                                                <table class="tg" border="1" width="100%">
                                                                    <tr>

                                                                        <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">กรณีติดต่อโดยตรงไม่ได้ให้ติดต่อบุคคลดังนี้</FONT>
                                                                        <th>
                                                                    <tr>
                                                                        <td class="tg-h31u" colspan="3">

                                                                            <div class="form-top">
                                                                                <div class="form-top-left">
                                                                                    <INPUT TYPE="radio" name="sex4" Value="1">นาย
                                                                                    <INPUT TYPE="radio" name="sex4" Value="2">นางสาว
                                                                                    <INPUT TYPE="radio" name="sex4" Value="3">นาง
                                                                                    ชื่อ<font color="red">*</font><INPUT TYPE="TEXT" NAME="t_106" SIZE=17 MAXLENGHT=17>
                                                                                    นามสกุล<INPUT TYPE="TEXT" NAME="t_107" SIZE=15 MAXLENGHT=15>
                                                                                    ความสัมพันธ์<INPUT TYPE="TEXT" NAME="t_108" SIZE=17 MAXLENGHT=17>   อาชีพ<INPUT TYPE="TEXT" NAME="t_109" SIZE=17 MAXLENGHT=17><br>

                                                                                    ที่อยู่&nbsp;
                                                                                    เลขที่<INPUT TYPE="TEXT" NAME="t_110" SIZE=10 MAXLENGHT=10>
                                                                                    ถนน<INPUT TYPE="TEXT" NAME="t_110_1" SIZE=20 MAXLENGHT=20>
                                                                                    อาคาร<INPUT TYPE="TEXT" NAME="t_110_2" SIZE=20 MAXLENGHT=20>
                                                                                    ซอย<INPUT TYPE="TEXT" NAME="t_110_7" SIZE=20 MAXLENGHT=20>
                                                                                    แขวง/ตำบล<INPUT TYPE="TEXT" NAME="t_110_3" SIZE=20 MAXLENGHT=20>
                                                                                    <BR>เขต/อำเภอ<INPUT TYPE="TEXT" NAME="t_110_4" SIZE=20 MAXLENGHT=20>
                                                                                    จังหวัด<INPUT TYPE="TEXT" NAME="t_110_5" SIZE=20 MAXLENGHT=20>
                                                                                    รหัสไปรษณีย์<INPUT TYPE="TEXT" NAME="t_110_6" SIZE=5 MAXLENGHT=5>
                                                                                    <br>
                                                                                    โทรศัพท์<INPUT TYPE="Numbers" NAME="t_111" SIZE=15 MAXLENGHT=15>โทรสาร<INPUT TYPE="Numbers" NAME="t_112" id="number" SIZE=15 MAXLENGHT=15>
                                                                                    <br>
                                                                                    <font color="red">*</font>โทรศัพท์มือถือ<INPUT TYPE="Numbers" NAME="t_113" id="number" onkeyup="autoTab2(this,2)">E-mail<INPUT TYPE="TEXT" NAME="t_114" SIZE=15 MAXLENGHT=15>
                                                                                </div>

                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                                <table class="tg" border="1" width="100%">
                                                                    <tr>

                                                                        <div style="height:40px;"></div>
                                                                        <div class="assessment-container container">
                                                                            <div class="row">
                                                                                <div class="col-md-6 form-box">


                                                                                    <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ข้อมูลการชําระเงิน</FONT></th>
                                                                    <tr>
                                                                        <td class="tg-h31u" colspan="3">
                                                                            <INPUT TYPE="Checkbox" name="check1" Value="1">ใช้ระบบหัก / โอนบัญชีธนาคารอัตโนมัติ (ATS)<br>
                                                                            ธนาคาร<INPUT TYPE="TEXT" NAME="t_115" bank="TexT" SIZE=17 MAXLENGHT=17> สาขา<INPUT TYPE="TEXT" NAME="t_116" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            เลขบัญชี<INPUT TYPE="TEXT" NAME="t_117" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            ประเภทบัญชี  <INPUT TYPE="radio" name="check2" Value="1 ">ออมทรัพย์  <INPUT TYPE="radio" name="check2" Value="2 ">กระแสรายวัน<br>
                                                                            <font color="red" ; size=2px>* (กรุณากรอกรายละเอียดในหนังสือขอให้หักบัญชีเงินฝาก โดยชื่อบัญชีธนาคารจะต้องเป็นชื่อเดียวกับที่ใช้เปิดบัญชีกับบริษัท)</font>&nbsp;&nbsp;&nbsp;<a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19"></a><br><br>
                                                                            <u>การรับเงินปันผล โดยบริหารโอนเงินอัตโนมัติ  (e - Dividend) </u> <br>
                                                                            <INPUT TYPE="Checkbox" name="check11" Value="1">โอนเงินเข้าบัญชีเงินฝาก<br>
                                                                            ธนาคาร<INPUT TYPE="TEXT" NAME="t_118" bank="TexT" SIZE=17 MAXLENGHT=17> สาขา<INPUT TYPE="TEXT" NAME="t_119" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            เลขบัญชี<INPUT TYPE="TEXT" NAME="t_120" bank="TexT" SIZE=17 MAXLENGHT=17><br>
                                                                            ประเภทบัญชี  <INPUT TYPE="radio" name="check3" Value="1 ">ออมทรัพย์  <INPUT TYPE="radio" name="check3" Value="2 ">กระแสรายวัน<br>
                                                                            <font color="red" ; size=2px> * (กรณีไม่ใช่บัญชีเดียวกับบัญชี ATS ที่ใช้ชำระค่าซื้อขาย ต้องแนบสำเนาสมุดเงินฝากธนาคารหรือสำเนาใบแจ้งรายการบัญชีธนาคารหน้าที่มีชื่อและเลขที่บัญชีพร้อมรับรองสำเนาถูกต้อง และจัดส่งให้ทางบริษัทฯ)</font><br>
                                                            </div>

                                                        </div>

                                                        </td>
                                                        </tr>
                                                        </table>


                                                        <table class="tg" border="1" width="100%">
                                                            <tr>

                                                                <div style="height:40px;"></div>
                                                                <div class="assessment-container container">
                                                                    <div class="row">
                                                                        <div class="col-md-6 form-box">

                                                                            <table class="tg" border="1" width="100%" id="u1_3">
                                                                                <tr>
                                                                                    <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">ประวัติการกระทำผิดทางกฏหมายฟอกเงิน ในช่วง&nbsp;&nbsp;3 ปี&nbsp;&nbsp; ที่ผ่านมา</FONT></th>
                                                                                <tr>
                                                                                    <td class="tg-h31u" colspan="3">
                                                                                        <div class="form-top">
                                                                                            <div class="form-top-left">
                                                                                                <align ="right">
                                                                                                    <INPUT TYPE="radio" name="ever" Value="1 ">ไม่เคยกระทําความผิด<br>
                                                                                                    <align ="right">
                                                                                                        <INPUT TYPE="radio" name="ever" Value="2 ">เคย<INPUT TYPE="TEXT" NAME="t_121" NAME="ever1" SIZE=40 MAXLENGHT=40> พ.ศ.


                                                                                                        <INPUT TYPE="TEXT" NAME="t_122" SIZE=10 MAXLENGHT=10><br><br>

                                                                                            </div>

                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                                                                            <table class="tg" border="1" width="100%" id="u1_1">
                                        <tr>
                                            <th class="tg-buov" colspan="3"><FONT FACE="db_helvethaica_x55_regular" size="5px" span class="auto-style2"><span class="auto-style3">เอกสารประกอบการเปิดบัญชีเพื่อซื้อขาย พร้อมลงนามทุกหน้าและจัดส่งให้บริษัทฯ&nbsp;</span></span>&nbsp; </FONT></th>

                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <font color="red" size="2px"><span class="auto-style7">*(จัดส่งตัวจริงให้บริษัท)</span> </font><br>
                                                <legend><FONT FACE="db_helvethaica_x55_regular">บุคคลธรรมดา</FONT></legend>
                                                <br>
                                                1.&nbsp;สําเนาบัตรประชาชน หรือสำเนาบัตรประจำตัวราชการ หรือสำเนาใบสำคัญต่างด้าว หรือสำเนาหนังสือเดินทางของลูกค้า (กรณีต่างชาติ) หรือของผู้รับประโยชน์และหรือผู้เกี่ยวข้อง (ถ้ามี) และของผู้รับมอบอำนาจ (กรณีมอบอำนาจ)<br>
                                                2.&nbsp;สําเนาทะเบียนบ้าน<br>
                                                3.&nbsp;สําเนาหน้าสมุดบัญชีเงินฝากธนาคารหน้าแรกที่แสดงเลขที่บัญชีที่ชำระะราคาผ่าน&nbsp;ATS<br>
                                                4.&nbsp;เอกสารแสดงฐานะทางการเงิน เช่น สำเนาบัญชีเงินฝากธนาคารแสดงรายการย้อนหลัง 3 เดือน สำเนาเอกสารแสดงเงินเดือนหรือรายได้ หลักฐานการเป็นเจ้าของกรรมสิทธิ์ทรัพย์สินอื่น เช่น ใบหุ้น ตั๋วสัญญาใช้เงิน พอร์ตเงินลงทุนในกองทุนหรือหลักทรัพย์, สลากออมสิน, พันธบัตร เป็นต้น<br>
                                                5.&nbsp;สัญญาแต่งตั้งตัวแทนนายหน้าซื้อขายหลักทรัพย์  (กรณีเปิดบัญชีหุ้น)&nbsp;&nbsp;&nbsp;<a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a><br>
                                                6.&nbsp;สัญญาแต่งตั้งตัวแทนซื้อขายสัญญาล่วงหน้า (กรณีเปิดบัญชี TFEX)&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                7.&nbsp;สัญญากู้ยืมเงินเพื่อซื้อขายหลักทรัพย์ (กรณีขอกู้ยืมเงิน)&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                8.&nbsp;เเบบฟอร์ม (Suirability Test)&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                9.&nbsp;ค่าอากรแสตมป์สําหรับสัญญา&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                10.&nbsp;หนังสือให้หักบัญชี&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                11.&nbsp;ใบคําขอใช้บริการผ่านระบบอินเทอร์เน็ต&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                12.&nbsp;ใบยืนยันการเปิดบัญชี&nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                13.&nbsp;ตัวอย่างลายมือชื่อ &nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                14.&nbsp;เเบบฟอร์ม FATCA &nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>
                                                15.&nbsp;กรณีมอบอำนาจ &nbsp;&nbsp;&nbsp;<FONT FACE="cordia_newregular" size="3px"><a href="...." download><img border="0" src="images/download.jpg" alt="DL" width="69" height="19" style="float: right"></a></FONT><br>

                                            </td>
                                        </tr>
                                    </table>


                                    <table class="tg" border="1" width="100%" id="u2_1" style="display:none;">
                                        <tr>
                                            <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" font-size="5px" class="auto-style2">เอกสารประกอบการเปิดบัญชีเพื่อซื้อขาย พร้อมลงนามทุกหน้าและจัดส่งให้บริษัทฯ&nbsp;</span>&nbsp; </FONT></th>
                                        <tr>
                                            <td class="tg-h31u" colspan="3">
                                                <font color="red" size="2px">*กรุณากรอกข้อมูลให้ครบถ้วน</font><br>
                                                <font color="red" size="2px">*(จัดส่งตัวจริงให้บริษัท) </font><br>
                                                <legend><FONT FACE="db_helvethaica_x55_regular">นิติบุคคล</FONT></legend><br>
                                                1.&nbsp;สําเนาหนังสือรับรองการจดทะเบียนเป็นนิติบุคคลจากกระทรวงพาณิชย์ (ย้อนหลังไม่เกิน 6 เดือน)<br>
                                                2.&nbsp;สําเนาบัญชีรายชื่อผู้ถือหุ้นล่าสุด หรือ เอกสารอื่นของบริษัทที่เเสดงรายชื่อล่าสุดของผู้ถือหุ้น<br>
                                                3.&nbsp;สําเนารายงานการประชุมคณะกรรมการบริษัทซึ่งมีมติอนุติให้ทําธุรกรรม รวมทั้งการเเต่งตั้งหรือมอบอํานาจบุคคลให้กระทําการเเทนในนามของบริษัท (ในกรณีมีการมอบอํานาจให้บุคคลอื่นที่ไม่ใช่กรรมการที่มีอํานาจดําเนินการตามหนังสือรับรองบริษัท)<br>
                                                4.&nbsp;สําเนาบัตรปะชาชน, สำเนาใบสำคัญต่างด้าว, สําเนาหนังสือเดินทางกรรมการผู้ที่มีอํานาจลงนามผูกพันบริษัท หรือบุคคลผู้ที่มีอํานาจลงนามในคําขอเปิดบัญชีเเละสัญญาเเต่งตั้งตัวเเทนฯ<br>
                                                5.&nbsp;หนังสือมอบอํานาจในการทําธุรกรรมของนิติบุคคล รวมทั้งสําเนาบัตรประจําตัวประชาชนของผู้รับมอบอํานาจ<br>
                                                6.&nbsp;สําเนางบการเงินงวดล่าสุด<br>
                                                7.&nbsp;เอกสารหรือข้อมูลการจัดตั้งกองทุนที่ลูกค้าขอเปิดบัญชีได้รับมอบอํานาจให้บริการ เช่น หนังสือรับรองการจดทะเบียนกองทุนรวม<br>
                                                8.&nbsp;เอกสารหรือข้อมูลที่สามารถเเสดงได้ว่าสถาบันการเงินดังกล่าวอยู่ภายใต้การกํากับดูเเลของหน่วยงานรัฐ<br>



                                            </td>
                                        </tr>
                                    </table>
                                                                            <!//////////////////////////////////////////////////////////////////////////////////////////////////////////////>
                                                                            <table class="tg" border="1" width="100%">
                                                                                <tr>
                                                                                    <div style="height:40px;"></div>
                                                                                    <div class="assessment-container container">
                                                                                        <div class="row">
                                                                                            <div class="col-md-6 form-box">


                                                                                                <th class="tg-buov" colspan="3" style="font-weight: normal"><FONT FACE="db_helvethaica_x55_regular" size="5px" class="auto-style2">บุคคลที่เกี่ยวข้องกับผู้ขอเปิดบัญชี</FONT></th>
                                                                                                <div class="form-top">
                                                                                                    <div class="form-top-left">
                                                                                                        </td>
                                                                                </tr>
                                                                            </table>


                                                                            <table align="center" border="1" width="50%" bgcolor="#FFFFFF">

                                                                                <tr>
                                                                                    <td class="auto-style4"><font color=red>บุคคลผู้รับมอบอํานาจในการส่งคําสั่งซื้อขายหลักทรัพย์</font></td>
                                                                                    <td align class="auto-style6"><INPUT TYPE="radio" name="1" value="1" uncheck>มี</td>
                                                                                    <td align class="auto-style5"><INPUT TYPE="radio" name="1" value="2" uncheck>ไม่มี</td>

                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <font color=red>บุคคลที่มีอํานาจควบคุมการทําธุรกรรมในทอดสุดท้าย (1)</font>
                                                                                        <br><dd>
                                                                                            <font color="red" ; size=4px>
                                                                                                (1) บุคคลที่มีอํานาจควบคุมการทําธุรกรรมในทอดสุดท้าย หมายถึงบุคคลธรรมดาที่มีอํานาจควบคุมหรือตัดสินใจในทอดสุดท้ายเกี่ยวกับการทําธุรกรรม เช่น ผู้ที่ตัดสินใจอยู่เบื้องหลังในการกำหนดทิศทางการซื้อขาย
                                                                                                โดยไม่จําเป็นต้องเป็นบุคคลที่ส่งคําสั่งซื้อขายเป็นต้น
                                                                                            </font></br>
                                                                                    </td>
                                                                                    <td align class="auto-style6"><INPUT TYPE="radio" name="2" value="1" uncheck>มี</td>
                                                                                    <td align class="auto-style5"><INPUT TYPE="radio" name="2" value="2" uncheck>ไม่มี</td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <font color=red>บุคคลที่ได้รับประโยชน์จากการทําธุรกรรมใทอดสุดท้าย (2)</font>
                                                                                        <br><dd>
                                                                                            <font color="red" ; size=4px>
                                                                                                (2) บุคคลที่ได้รับระโยชน์จากการทําธุรกรรมในทอดสุดท้าย หมายถึงบุคคลธรรมดาที่เป็นเจ้าของบัญชีที่เเท้จริงซึ่งพิจารณาจากข้อเท็จจริงในทางพฤตินัย เช่น
                                                                                                ผู้ได้รับประโยชน์ในรูปเเบบเงินปันผล ส่วนต่างราคา หรือการใช้สิทธิต่างๆ เป็นต้น
                                                                                            </font></br>
                                                                                    </td>
                                                                                    <td align class="auto-style6"><INPUT TYPE="radio" name="3" value="1" uncheck>มี</td>
                                                                                    <td align class="auto-style5"><INPUT TYPE="radio" name="3" value="2" uncheck>ไม่มี</td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td class="auto-style4">
                                                                                        <center></center><font color="red">
                                                                                            ***กรณีตอบว่ามข้อใดข้อหนึ่งกรุณากรอกรายละเอียดในเอกสารเเบบเเสดงตัวข้อมูลบุคคลที่เกี่ยวข้อง
                                                                                            กับผู้ขอเปิดบัญชีให้ครบถ้วนเเละโปรดเเนบสําเนาบัตรประชาชนของบุคคลนั้นพร้อมรับรองสําเนา 1 ฉบับ
                                                                                        </font><center>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                                                                            <br>
                                                                            <br>
                                                                            &nbsp;&nbsp;&nbsp;
                                                                            <td>
                                                            <tr>
                                                                &nbsp;โดยการลงนามในเอกสารนี้ข้าพเจ้าขอรับรอง และยืนยันว่าข้อมูลรายละเอียดข้างต้นเป็นจริงทุกประการ และข้าพเจ้าได้เข้าใจและรับทราบถึงข้อกฏหมายกฏระเบียบที่เกี่ยวข้องหรือข้อบังคับ ประกาศ ซึ่งออกโดยสำนักงานคณะกรรมการกำกับหลักทรัพย์เเละ ตลาดหลักทรัพย์แห่งประเทศไทย สำนักหักบัญชี หน่วยงานราชการ หรือ บริษัทฯ ที่เกี่ยวข้องกับการซื้อขายหลักทรัพย์ดีแล้ว ทั้งนี้ ข้าพเจ้าตกลงยินยอมให้บริษัทฯ ทำการตรวจสอบ และเปิดเผยข้อมูลของข้าพเจ้าต่อสำนักงานคณะกรรมการกำกับหลักทรัพย์และตลาดหลักทรัพย์แห่งประเทศไทย สำนักหักบัญชี และ/หรือหน่วยงานที่มีอำนาจตามกฏหมาย
                                                                <br>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ข้าพเจ้าขอรับรองว่าข้าพเจ้ามีอำนาจโดยชอบด้วยกฏหมายในการทำการซื้อขายหลักทรัพย์ ภายใต้กฏหมายของประเทศไทย และกฏหมายของประเทศที่ข้าพเจ้าจดทะเบียน ข้าพเจ้า ขอสละข้อต่อสู้ทั้งปวงบรรดาที่พึงมีต่อบริษัทฯ ไม่ว่าด้วยประการใดๆ ทั้งสิ้นหากข้าพเจ้าให้ข้อมูลเท็จ และข้าพเจ้ายินดีปฏิบัติตามกฏระเบียบข้อบังคับในการซื้อขายหลักทรัพย์ของบริษัทฯ อย่างเคร่งครัด
                                                            </tr></td>
                                                            <br>
                                                            <br>


                                                    </div>

                                                </div>
                                                <CENTER>
                                                    
                                                
                                                    <asp:Button ID="printButton" runat="server" Text="Print" OnClientClick="javascript:window.print();" />
                                                    <form action="WebForm1.aspx" method="post">
                                                        <button type="submit" value="Submit">Submit</button>
                                                    </form>
                                                        <button type="reset" value="Reset">Reset</button>

</CENTER>
                                            </div>
                                            </fieldset>



                </form>
                
                

               
                     
            </div>
            <script>
                $(function () {
                    $('[data-toggle="datepicker"]').datepicker({
                        autoHide: true,
                        zIndex: 2048,
                        format: 'dd/mm/yyyy'
                    });
                });
        </script>

</body>
</html>
