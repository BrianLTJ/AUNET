// JavaScript Document
function changePlaceOfButton()
{
	var X = $('#myForm tr:visible').last().offset().top;
	X+=100;
	$("input:visible").css("top",X);
}

	
	
function condition_submit(){
	var state=$("select:visible");
	var counter=0;
	counter=0;
	for(i=0;i<state.length;i++)
	{
		if(state[i].value!="0")
		{
			counter++;
		}
	}
	if(counter>0)
	{
		document.getElementById("myForm").submit();
	}
	else
	{
		alert("请至少审核一项");
	}
		
	
}
function formReset(){
	document.getElementById("myForm").reset();
	}
function formSave_as_Excel(){
	document.getElementById("myForm").submit();
	}
	

function show_boPlace(){
	document.getElementById("boPlace").style.display = "block";
	
}

function show_stuffCondition(){
	
    document.getElementById("action_type").value = "Stuff";
	document.getElementById("tableApply_Stuff").style.display = "block";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",false);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_colPrintingCondition(){
	
    document.getElementById("action_type").value = "ColorPrinting";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "block";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",false);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}

function show_colClassCondition(){
	
    document.getElementById("action_type").value = "StudentCenter";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "block";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",false);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_roShowCondition(){
	
    document.getElementById("action_type").value = "RoadShow";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "block";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",false);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_buClassCondition(){
	
    document.getElementById("action_type").value = "BuildingClassroom";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "block";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",false);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_buclass2Condition(){
	
    document.getElementById("action_type").value = "BuildingClassroom2";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "block";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",false);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_spPlaceCondition(){
	
    document.getElementById("action_type").value = "SpecialPlace";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "block";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",false);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_spoCourtCondition(){
	
    document.getElementById("action_type").value = "SportCourt";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "block";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",false);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_eaThirdCondition(){
	
    document.getElementById("action_type").value = "EastThird";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "block";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",false);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_othPlaceCondition(){
	
    document.getElementById("action_type").value = "OtherPlace";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "block";
	document.getElementById("tableApply_bo_othStuff").style.display = "none";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",false);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",true);});
	changePlaceOfButton();
}
function show_bo_othStuffCondition(){
	
    document.getElementById("action_type").value = "OtherStuff";
	document.getElementById("tableApply_Stuff").style.display = "none";
	document.getElementById("tableApply_colPrinting").style.display = "none";
	document.getElementById("tableApply_colClass").style.display = "none";
	document.getElementById("tableApply_roShow").style.display = "none";
	document.getElementById("tableApply_buClass").style.display = "none";				
	document.getElementById("tableApply_buclass2").style.display = "none";
	document.getElementById("tableApply_spPlace").style.display = "none";
	document.getElementById("tableApply_spoCourt").style.display = "none";
	document.getElementById("tableApply_eaThird").style.display = "none";
	document.getElementById("tableApply_othPlace").style.display = "none";
	document.getElementById("tableApply_bo_othStuff").style.display = "block";
	$(function(){$("#tableApply_Stuff").attr("disabled",true);});
	$(function(){$("#tableApply_colPrinting").attr("disabled",true);});
	$(function(){$("#tableApply_colClass").attr("disabled",true);});
	$(function(){$("#tableApply_roShow").attr("disabled",true);});
	$(function(){$("#tableApply_buClass").attr("disabled",true);});
	$(function(){$("#tableApply_buclass2").attr("disabled",true);});
	$(function(){$("#tableApply_spPlace").attr("disabled",true);});
	$(function(){$("#tableApply_spoCourt").attr("disabled",true);});
	$(function(){$("#tableApply_eaThird").attr("disabled",true);});
	$(function(){$("#tableApply_othPlace").attr("disabled",true);});
	$(function(){$("#tableApply_bo_othStuff").attr("disabled",false);});
	changePlaceOfButton();
}