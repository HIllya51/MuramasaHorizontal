//<continuation number="1600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_015.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}


//	$Ichizyou_Flag = 0;
//	$Kanae_Flag = 0;
//	$Muramasa_Flag = 0;

	RouteChicker2();

//���ʥ��`
	if($RC_N["���ʥ��`"] < $RC_N["һ��"] && $RC_N["���ʥ��`"] < $RC_N["����֦"] && $RC_N["���ʥ��`"] < $RC_N["����"]){

//һ��
	}else if($RC_N["һ��"] < $RC_N["���ʥ��`"] && $RC_N["һ��"] < $RC_N["����֦"] && $RC_N["һ��"] < $RC_N["����"]){
		//��һ����`�ȤΤ�
		#bg039_��������ϯa_01=true;
		#ev115_һ�����˴���뾰��_a=true;
		#ev115_һ�����˴���뾰��_b=true;
		//����λ��륷�`��mb04_023��ʹ�ä��ޤ�
		$Fla_ev115pass=true;

//����֦
	}else if($RC_N["����֦"] < $RC_N["���ʥ��`"] && $RC_N["����֦"] < $RC_N["һ��"] && $RC_N["����֦"] < $RC_N["����"]){
		//������֦��`�ȤΤ�
		#bg039_��������ϯa_01=true;
		#bg035_�`�}���`���åȸ��a_01=true;
		#ev116_���Ϥ�����֦=true;

//����
	}else if($RC_N["����"] < $RC_N["���ʥ��`"] && $RC_N["����"] < $RC_N["һ��"] && $RC_N["����"] < $RC_N["����֦"]){
		#bg039_��������ϯa_01=true;
		#bg035_�`�}���`���åȸ��a_01=true;
		#bg002_��a_01=true;
		#bg035_�`�}���`���åȸ��b_01=true;
	}else{
//������

	}

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($Others_Flag  == 0 && $Kanae_Flag == 0 && $Ichizyou_Flag == 0 && $Muramasa_Flag == 0){
//�룺�������餳�Εr��ǥե饰�ʤ��Ȥ����ѥ��`�󤬤ʤ��Τǡ��g�`���ʤ������ˤ����ޤ���090923��
//���ʥ��`
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["���ʥ��`"] < $RC_N["һ��"] && $RC_N["���ʥ��`"] < $RC_N["����֦"] && $RC_N["���ʥ��`"] < $RC_N["����"]){
//���ʥ��`
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//һ��
	}else if($RC_N["һ��"] < $RC_N["���ʥ��`"] && $RC_N["һ��"] < $RC_N["����֦"] && $RC_N["һ��"] < $RC_N["����"]){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_1";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//����֦
	}else if($RC_N["����֦"] < $RC_N["���ʥ��`"] && $RC_N["����֦"] < $RC_N["һ��"] && $RC_N["����֦"] < $RC_N["����"]){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_2";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

//����
	}else if($RC_N["����"] < $RC_N["���ʥ��`"] && $RC_N["����"] < $RC_N["һ��"] && $RC_N["����"] < $RC_N["����֦"]){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_3";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	if($ma03_015_routeFlag == true){$ma03_015_routeFlag = false;}
	else{$Muramasa_Flag++;SetHex();}
//������
	}else{
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_4";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$PreGameName = $GameName;

	$GameName = "ma03_016.nss";

}

scene ma03_015.nss
{

}



scene ma03_015.nss_1
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_014.nss"

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);

	Delete("�ϱ���");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��һ��
//��һ��

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����һ���ĵ�ͷ�ƿ����ߣ���ע�����Żؾ����ϡ�
��û����ʲô�ر���¡���տ�ʼ��һ���������Ȼ�
�ľ������ڽ��С�

����һʱ�俴������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	ClearWaitAll(1000, 2000);

//���������ȡ�����
	WaitKey(1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����µ�״����չ��ȥҲ�������쳣�仯��
����������һ����

��û�д������ӵ���Ӱ��
������֦С���ͷ������ɳ�ӣ�������ȥ��ϴ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma03/0150010a00">
����û��ϵ��
��ԽҰ�����ϻᴵ���ܶ�ɳ������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150020a02">
����û�¡�
�����̶ֳȣ��Ҳ��Ǻ����⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������µ�˵�ţ�һ�������պ�ͷ������մ�ϻ�
�ס�
��ԭ���Ǻܶ�������ò����˸�������ע�⡣

������Ů�ԡ��Ҿ��û��Ƕ����ע��Щ�ȽϺá���
�����������и��˵��뷨�������ǿ�����˻���˴���
�鷳��

���������ǣ����Ǻ����⡣
������Ǳ��˵Ļ��Ҳ���ܣ���������������Ů������
�ٰ�ģ��Ͼ�Ҳ���Լ��Ĳ��¡�

�������ұ�����
������һ�룬�Ҿ��޷���������ȥ��

������Ҳ���Ƕ�����°ɡ�
���Ұ�嶯�Եأ��������ָ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ���������򤹤뾰��
	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev115_һ�����˴���뾰��_a.jpg");
	Fade("�}�ţ�100", 1000, 1000, null, true);

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma03/0150030a00">
��������

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150040a02">
��������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150050a00">
��������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150060a02">
���ǡ��Ǹ�����
���ն���������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150070a00">
��ʲô����

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150080a02">
���Ǹ�������ʲô������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150090a00">
�����õ�ɳ�ӡ���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150100a02">
��������

{	FwR("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150110a02">
���ǡ��ǡ��ǳ���Ǹ��
���ͷ����ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ����ʼ���ˡ�
����֪�����������ʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_�Ť�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150120a02">
�������ھ�Ū������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150130a00">
�����ǵġ�
���Ҳ�����ί��شߴ��㡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ȡ����������û�ù�������������ϵ�ɳ�ӡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma03/0150140a00">
������㲻����Ļ������Űɡ�
��ֻ�����е�������ѡ���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150150a02">
��������Ǹ��
�����������ѿ��ɡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150160a02">
���Ǹ�����ȥϴ�ɾ�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150170a00">
����˵���Ҳ����ڴ���ɡ���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150180a02">
�����ǡ�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150190a00">
����ʵ�����ѿ���
������Щ�ط�ͦ����˼��ġ���

//��������
<voice name="����" class="����" src="voice/ma03/0150200a00">
������Ū����Ҳ���������ò����ô˵Ӧ�ú�
�ʰɡ���
��˵���������������㶼�����޷���������
�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����Ұ��ս�����߱�����׷ɱ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/0150210a00">
����ʲôʱ����������Ư������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150220a02">
������������

{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150230a02">
���ף���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150240a02">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�900", 4900, Center, Middle, "cg/ev/ev115_һ�����˴���뾰��_b.jpg");
	FadeDelete("�}�ţ�100", 500, true);

	SetFwR("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150250a02">
������!?��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��һ���ֻ��ˡ�
�����������Щʲô�ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma03/0150260a00">
��Ҫ˵�Ļ���Ҳ�����絶һ�����ò��
���·�Ϳ��ѪҺ����������Ȼ����������

//��������
<voice name="����" class="����" src="voice/ma03/0150270a00">
���Ҿ����㱣�����������ˣ�һ����
���Լ�������Ļ����������ɡ���

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150280a02">
����������
����������

{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150290a02">
���ҿ���������������
���ڴն��������С���

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150300a00">
���ǰ���
��������Ϊ���˾ͺ���<RUBY text="������">������</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��һ�������Ѳ����⻰˵�úܹ��֣�һ�����²�ͣ�ؼ�����
���š�
���Һã��о�������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150310a02">
��������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150320a00">
����������Ū������������ϵĲ�����𡣡�

{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150330a02">
��û�С�����

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150340a00">
����������
�����Ҿͼ����ˣ�������𡣡�

{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150350a02">
�����������⡣
���������ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���õ�������ָ����ͷ����
����Ȼմ�˺ö�ɳ����

��һ��ϸ��ע����ͷ��Ҳ��������һ��һ�����ؽ�
ɳ��ȡ���ӵ���
��һ���ԹԵ����Ҵ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150360a02">
��������
����һ�α���ô˵��

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150370a02">
��������Ϊʲô��
���ܾ��á������泩���ܿ��ģ�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150380a02">
������������ڻ������Ļ�����
���ͻ�˵�����Ļ��ɡ�����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150390a02">
���������ָо�������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150400a00">
���󲿷�Ū���ˡ���

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150410a02">
��������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150420a00">
����ô�ˣ���һ������

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150430a02">
����������
���Ǹ�����

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150440a02">
��������
���Ҿ���ǰ�滹մ��һЩ����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150450a00">
������
����ͷת��������

{	FwR("cg/fw/fwһ��_Ц�b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150460a02">
���ǡ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150470a00">
��������

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150480a02">
��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150490a00">
����û��������
���������𣿡�

{	FwR("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150500a02">
��������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150510a00">
��һ������

{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150520a02">
�������и��׵ġ���ζ��������

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150530a00">
������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150540a03">
�������������ڸ�ʲô������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��㡣

	OnSE("se���L_����_Ź��02",1000);

	CreateColorSP("�}�ե�", 6000, "#FFFFFF");
	Wait(1);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}�ե�", 6000, "#FFFFFF");
	CreateTextureSP("�}���", 200, Center, Middle, "cg/bg/bg039_��������ϯa_01.jpg");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}�ե�", 200, false);
	FadeFR4("�}���",0,1000,300,0,0,20,DxlAuto,true);
	Delete("�}���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ͻȻϮ����������
�����ҵ�ͷ������ɾ�ʮ�Ƚǣ����ŵ���ȥ��

���ǳ�ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm22",0,1000,true);

	StR(1000, @300, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	Move("@StR*", 300, @-300, @0, Dxl2, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma03/0150550a00">
��������ξ���¡���

{	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150560a02">
������������!?
���ǡ��ǣȣѣ������ʲôʱ���������ģ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150570a03">
��Ŷ��Ŷ��Ŷ��
����˵�����ϵ�����̨���أ���

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150580a03">
��Ҳ����˵״����Ȼ����������
�����������Ȱɣ������Ļ�ɣ�����������ȥ�ɣ�
����������ģ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150590a03">
�����ó��Ҳ����ǰɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��ԭ����ˡ�
����������������

�����Կ͹۰��շ��ŵ�״����

�����������ѹ�������⡣
</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma03/0150600a00">
����ξ���¡�������ᡣ��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150610a02">
���ǡ��ǵġ���ᣡ
��ֻ�ǡ�ֻ�ǰ���Ū��ɳ�Ӷ��ѡ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150620a03">
�����������������Ҳ�������
������֪���������ֻ��һ������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150630a03">
���������ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150640a00">
���ǡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150650a03">
�����ȥ���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150660a00">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150670a04">
����С�㡣
������������

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150680a03">
�����ǿ��ǣ�
���Ǿ��Ǻ������ڰ�����Ҫ���������Ĺ�ϵ�Ѿ�
���ܸı�Ļ�����û���Ҳ��ȥ������ˣ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150690a03">
��˳��һ˵�ո����ڿ���ЦŶ����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0150700a02">
������ĺܲ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���޶˱��ɧ�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	ClearWaitAll(2000, 500);

//��͎�
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����������֮��Ľ���������ٴ�����һ�𿴾�����
��Ҳ������ʱ�򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���K��

..//������ָ��
//�Υե����롡"ma03_016.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������֦
scene ma03_015.nss_2
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//������֦

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����һ���ĵ�ͷ�ƿ����ߣ���ע�����Żؾ����ϡ�
��û����ʲô�ر���¡���տ�ʼ��һ���������Ȼ�
�ľ������ڽ��С�

����һʱ�俴������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥ֥�å�������
	ClearWaitAll(1000, 2000);

//���������ȡ�����
	WaitKey(1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm27",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������״���Ľ��ţ���վ��������
��ҪȥС�㣬������Щ���⡣

{	CreateTextureEX("�}����110", 110, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��a_01.jpg");
	Fade("�}����110", 1000, 1000, null, false);}
���������뻷���������ڵķ�������
�������ξ����ͬ�С�����ȥϴ��ͷ���ϵ�
ɳ�Ӱɡ���Ȼͷ���ֳ����й��󣬲�����
����������Ĳ���Ҳ�ܶࡣ

��Ͷ���˴�����Ǯ��װ�׾���Ҳ����Ϊ��ʿ��Ů���罻
����һ���棬Ϊ�˲�������˺������ַ����������ʩ��
����ξ�����˾Ƶ��һ�����䡣

����������������Ƿ��䡣
�������⿴�ž����Ʋ��һ���ѵķ��䡣

���Ծ��ٵ�����Ҫ������ס�޵Ļ���һ�����ڱ������
��ʮ����¶��������С����Ѿ�����⼫���ˡ�
��ֻ��Ϊ��ϴ��ͷ���������ַ���Ĵ�ξ�Ľ�Ǯ�ۣ���
����;��úܿ��¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\Ļ", 200, "Black");
	Fade("�\Ļ",300,1000,null,true);

//���ӣţ��Υå�
	CreateSE("SE01","se����_����_�ɥ��Υå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$ma03_15soundSE = RemainTime("SE01");
	WaitKey($ma03_15soundSE);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150710a03">
���������ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150720a00">
���ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150730a03">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣
//�����Ϥ�����֦�����˥������֤äƿؤ��뤵�裿
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Delete("�ϱ���");

	CreateTextureSP("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev116_���Ϥ�����֦.jpg");

	OnSE("se�ճ�_����_���_��01",1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150740a03">
�����Եȡ�
���Һܿ�ʹ�����ϡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150750a00">
�������á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����������������ģ��������΢��ס�˺�����
����ϴ���˰ɡ��״ɵļ��������ǳ��ɫ����������
ֻ����һ�鲼��

�����ֶ�����Ȼ�޷���ס������ð����������
���ƻ����ζ����ش̼������衣

����������֦С���Ǵ������ν�Թ�Ĵ��ݣ���
ȫ��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����衿
<voice name="����" class="����" src="voice/ma03/0150760a04">
���촩���·�����С�㡣��

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150770a03">
����ѽ��Ϊʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150780a00">
��ʧ���ˡ�
�����ƺ�̫����ӭ���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150790a04">
�����������С�㡣
����Ϊһ������Ů�ԣ��ڱ����˿�������ʱ
����ֱ���ñ����嶯֧�������й������С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150800a04">
�����ʱ�̷ǳ��пᡣ
����Ϊ��������ּ�����ʹ��ɥʧ��ʶ�Ĵ����
���ⷽ���ϣ����ݿ�������������������Ź��
��Ͷ�������Ϊ���ʡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150810a04">
��������ͭ��֮��Ķ����ͺܲ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150820a00">
�����������뱭�Ӳ��Ķ����Ұɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��Ϊ�����Լ������ߵ�ֻ����ʶ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150830a03">
���������ǵġ�
��������Ҳ��ܣ������Ҹ���������֮�䲻��
Ҫ��ô���װɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150840a04">
����ѽ��ѽ��������ܵı��ַ�ʽ����
��������Ҳ�����С�������Ľӽ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150850a00">
��������

{	SetComic(@0,@0,4);
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150860a03">
�������������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�������˫����������������⡣
����èһ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150870a03">
������ԡ���µķ羰�����뿴���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150880a00">
���ǡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150890a03">
���ǺǺǣ������ǿŶ��
���������ʵ�������ҵĻ����Ҿ͡�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150900a04">
����С�㡣
  �밴�����ھ籾�öԻ����в���ȥ����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150910a03">
������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150920a03">
����ѽ����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150930a03">
������������
���������ˣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150940a00">
����ϲ��Ů�ԡ�
���ȱ��ǣ����ξ�����������ˡ���

//��������
<voice name="����" class="����" src="voice/ma03/0150950a00">
������������ҿ���������Ļ����һ���Ȼ
���͵ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0150960a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150970a04">
���ն����ˡ���
�����Ʋ������ȳ��μ���ʱ���ӳ�Ĭ����ɫ��
û�뵽ʵ����������ĬҲû��ֻʣ��ɫ�ˡ���

{	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0150980a04">
���治��С������
����ɴ�����ķ��ڷ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0150990a00">
����л�佱����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151000a03">
�����������Ǹ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151010a04">
���������ˡ���������Ŷ��
�����Ȱ��Ź��ϰɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151020a00">
���������ʧ���ˡ�
����û��ע�⵽����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
//�룺�_���÷Ť����ä��ɥ����]�᤿
	OnSE("se�ճ�_����_���]���01",1000);
//	CreateColorSP("�}��ܞ", 15000, "#000000");
//	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151030a03">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151040a04">
��������ɡ�
����С�㡣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151050a03">
���롢��ʲô������

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151060a04">
������������ô����С�㡣
���øոյ���ͷ���ϰɡ���

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151070a03">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151080a04">
����ѽ��ѽ����
��������ô���ء���

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151090a04">
����ɴ�������˱���Ӧ�ǹ�˵������Ů�ӲŶ�
����
�������ն����ˣ�������ԭ���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151100a00">
���ǡ�
������������ס���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151110a04">
���治���Ǵ��ˡ�
���š�������С��Ĳ����öԻ����еĻ����ͻ�
Ц�������������ļ����˰ɡ���

{	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151120a04">
����������ô���£����ᷢչ���˱�¶�����㡣
����С��һ��ת��Ϊ�ؾͻ�ǳ�������

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151130a03">
�����ţ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151140a04">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151150a00">
��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151160a03">
���ǡ��Ǹ����������ˣ�
������ô˵�أ��������е�ȱ�������أ�����
֧����Ů�������ٵĵ���Ԫ�ء��ȡ��ĺ�����
ǡ��ֵ֮���ء���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151170a03">
������Ǹ�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151180a04">
�������ӱܡ�
��������ȫ���ӱ�Ŷ����С�㡣��

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151190a03">
���ŲŲ�û�ӱܣ�
���ҡ���֪���ˡ����Եȡ���

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151200a03">
��û��û��ϵ����
����ûʲô�ر�ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151210a03">
����������������������
���ǡ��Ǿ͡�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151220a00">
��ˡ�����񡣡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151230a03">
������ʲô����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151240a00">
����Ц����ͷ�ˡ�
�����������������������´�硣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151250a04">
���ǡ�
�����Ǻܿ�ͺá���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151260a00">
������������
��ʧ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}��ܞ", 15000, "Black");

//���Ф���
	OnSE("se�ճ�_����_���_��01",1000);
	Fade("�}��ܞ", 0, 1000, null, false);
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnSE("se�ճ�_����_���]���01",1000);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151270a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151280a04">
��������С�㣬���·��ɡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151290a03">
��������������ʲô��
���Ҹо�������޿��κ������߰����ʧ�ܸС���

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0151300a04">
���������ˡ�
����С������̫�����ء���

{	FwC("cg/fw/fw����֦_����.png");}
//���ڤ�������
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0151310a03">
�������ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	ClearWaitAll(2000, 500);

//���Q��ϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�������꣬�ص�����ϯ��
������������ʱ�򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���K��

..//������ָ��
//�Υե����롡"ma03_016.nss"


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�����
scene ma03_015.nss_3
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//�����

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����һ���ĵ�ͷ�ƿ����ߣ���ע�����Żؾ����ϡ�
��û����ʲô�ر���¡���տ�ʼ��һ���������Ȼ�
�ľ������ڽ��С�

����һʱ�俴������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥ֥�å�������
	ClearWaitAll(1000, 2000);

//���������ȡ�����
	WaitKey(1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
������״���Ľ��ţ���վ��������
��л��������ͬ�У����ſ������ķ�����ȥ��

����Ҫȥ���������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������

	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma03/0151320a00">
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151330a01">
��������
����ô�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������˵������ͷ����ҵĽӽ��˰ɡ�
��ȫȻ�������ȣ����ɫ��֩����<RUBY text="Metal Echo">���д���</RUBY>�ʵ���

���ٿ����뽣���Ƕ���Ϊһ������ߡ�
��һ��ͨ���嵶��������ϵ���������۶�Զ�ľ����
����ϰ����޷������ߵ���ϵ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma03/0151340a00">
��ûʲô���¡�
��������΢�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151350a01">
������
��û���쳣Ŷ��û���������塣��ȻҲû��
�����Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�����������ػش��������ͷת�򻷵��ķ���
�����������ڣ���δ�����Ǳߡ�

������ô���á�
��Ҳ���Ƕ�֩��ĸ���������ָ�ƣ���ֻ�������ָо���
Ҳ���������֮�����ε���ϵ���Ҵ�����ĳЩ�о���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/ma03/0151360a00">
�����ڿ�ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151370a01">
��������֪������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151380a00">
���Ҳ����������㡣
���ܾ������ܲ�����������񡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151390a01">
���ǳ���Ǹ��
����������ֵĻ��һ�ú�ע��ģ�����ġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151400a00">
���ұ�����û�ڵ��ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151410a01">
�����𡭡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151420a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151430a01">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151440a01">
���������ڿ��ֵ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151450a00">
�������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151460a01">
���š�
�����ñ仯��󰡡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151470a00">
����ǰ����Ҳ�����𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151480a01">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(1000,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
����ʱ���������ء�
����������ô�ʣ�������û�ʳ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/ma03/0151490a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151500a01">
����û�ʡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151510a00">
��Ҳûʲô���ʵġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151520a01">
�������Ǻǡ�
����������������׸�Ⱦ�ء���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151530a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�����˲��ٿ��ڡ�
������ֻ���ŷ�����

������������Ϊ�����������ʱ����ս��׷ɡ�
����ʱ���ֵ������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma03/0151540a00">
�������Ҳ��û�ȥ�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151550a01">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151560a00">
����˵��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151570a01">
��ʲô�£���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0151580a00">
���ҵ��׸���ô��ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`���åȈ��h��
//������ȥ�`�륿��`�Ϥ�ʸӡ��Ԥä�

	SetVolume("@mbgm*", 100, 0, null);

	CreateTextureSP("�}�ű���", 3000, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��b_01.jpg");
	Wait(600);
	Fade("�}�ű���", 0, 0, null, true);

	Wait(600);

	Fade("�}�ű���", 0, 1000, null, true);
	Wait(600);
	Fade("�}�ű���", 0, 0, null, true);

	Wait(600);

	Fade("�}�ű���", 0, 1000, null, true);

	Wait(600);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/ma03/0151590a00">
���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0151600a01">
��������ԭ������ô�������ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	ClearWaitAll(2000, 500);

//�������øжȣ�
	$ma03_015_routeFlag = true;
	$Muramasa_Flag++;

	judgment_of_count();

//���Q��ϯ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��������ɴ�����æ�µ����棬�ص��˹���ϯ��
������������ʱ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���K��


..//������ָ��
//�Υե����롡"ma03_016.nss"


}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񥤥٥�ȟo��
//���룺�����餳�Εr��ǥե饰�ʤ��Ȥ����ѥ��`�󤬤ʤ��Τǡ��g�`���ʤ������ˤ����ޤ���090923��
scene ma03_015.nss_4
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//�񥤥٥�ȟo��

	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]  
����һ���ĵ�ͷ�ƿ����ߣ���ע�����Żؾ����ϡ�
������������ʱ�򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���K��

..//������ָ��
//�Υե����롡"ma03_016.nss"

}



