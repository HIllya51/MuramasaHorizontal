with open('function.nss','rb') as ff:
    bs=ff.read()

i1=bs.find(b'function SetText()')

i2=bs.find(b'function SetTextBase()')

bs=bs[:i1]+'''
function SetText()
{
	//TakeRateBack();//写真撮る用
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize = 540;
		$LoadTextHsize = 150;

		$TypeBeginFwX=145;//変更
		$TypeBeginFwY=567;
		$TypeBeginNwX=145;//変更
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}
		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=320;
		$TypeBeginTextY=572;
		$TypeBeginIconX=830;
		$TypeBeginIconY=685;

		$TypeBeginNut="@boxHF";
	}else{
		$LoadTextWsize = 660;
		$LoadTextHsize = 150;

		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=185;
		$TypeBeginTextY=570;
		$TypeBeginIconX=800;
		$TypeBeginIconY=680;

		$TypeBeginNut="@boxHN";
	}


	SetTextBase2();
}

function SetTextL()
{
	//TakeRateBack();//写真撮る用
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize = 540;
		$LoadTextHsize = 150;

		
		$TypeBeginFwX=145;//変更
		$TypeBeginFwY=567;
		$TypeBeginNwX=145;//変更
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}


		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=320;
		$TypeBeginTextY=572;
		$TypeBeginIconX=830;
		$TypeBeginIconY=685;

		$TypeBeginNut="@boxHF";
	}else{
		$LoadTextWsize = 660;
		$LoadTextHsize = 150;

		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=185;
		$TypeBeginTextY=570;
		$TypeBeginIconX=800;
		$TypeBeginIconY=680;

		$TypeBeginNut="@boxHN";
	}

	SetTextBase2();
}


function SetTextR()
{
	//TakeRateBack();//写真撮る用
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize = 540;
		$LoadTextHsize = 150;

        
		$TypeBeginFwX=145;//変更
		$TypeBeginFwY=567;
		$TypeBeginNwX=145;//変更
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}


		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=320;
		$TypeBeginTextY=572;
		$TypeBeginIconX=830;
		$TypeBeginIconY=685;

		$TypeBeginNut="@boxHF";
	}else{
		$LoadTextWsize = 660;
		$LoadTextHsize = 150;

		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=185;
		$TypeBeginTextY=570;
		$TypeBeginIconX=800;
		$TypeBeginIconY=680;

		$TypeBeginNut="@boxHN";
	}


	SetTextBase2();
}



'''.encode('cp932')+bs[i2:]

with open('nss-1-h/function.nss','wb') as ff:
    ff.write(bs)
    