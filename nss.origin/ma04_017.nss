//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_017.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//$Ichizyou_Dead = true;
//$Kanae_Dead = true;

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	if($Ichizyou_Dead == true){
	#ev909_��҆�� = true;
	#ev912_��҆�¸o�ݳh���å�_a = true;
	#bg022_ɽ��a_03 = true;
	}else if($Kanae_Dead == true){
	}else{
	#bg022_ɽ��a_03 = true;
	#ev909_��҆�� = true;
	#ev120_�Ď챾���i������֦_a = true;
	#ev120_�Ď챾���i������֦_b = true;
	#ev120_�Ď챾���i������֦_c = true;
	#ev121_�I�֤�ͻ����������_a = true;
	#ev121_�I�֤�ͻ����������_b = true;
	#ev122_�R��������҆�� = true;
	}

	//$Kanae_Dead = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($Ichizyou_Dead == true){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
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

	}else if($Kanae_Dead == true){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
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

	}else{

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_allk";
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

	$GameName = "ma04_018vs.nss";

}

scene ma04_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_016vs.nss"

//����᪡�
//���ҥ���ȫ�T����or����֦�Τ�����Έ��Ϥϣ�����
//��һ���Τ�����Έ��Ϥϣ�����

}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_017.nss_allk
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//����҆��
//���֤줹�Ȥդ������`����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 10, -270, -130, "cg/ev/resize/ev909_��҆��_l.jpg");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	OnSE("se���L_�Ɖ�_���k07",1000);

	CreateTextureEX("�}��", 1000, -270, -130, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreatePlainEXadd("�}��", 1010);
	SetBlur("�}��", true, 3, 600, 30, false);
	CreateColorEXadd("�}�ե�", 2000, "#FFFFFF");

	Fade("�}��", 0, 700, null, false);

	Zoom("�}��", 200, 1200, 1200, null, false);
	Fade("�}�ե�", 200, 1000, null, true);

	Delete("�}��");

	Fade("�}�ե�", 300, 0, null, false);
	DrawDelete("�}�ե�", 300, 100, "effect_01_00_0", false);

	Shake("�}�ţ�", 1000, 10, 60, 0, 0, 1000, Dxl2, false);
	FadeFR4("�}��",0,500,1000,0,0,30,Dxl2,true);
	Delete("�}��*");

//���ţ֣�ľ�򱳤ˤ������򤪤����Ď챾���i������֦
//������h���|��
	PrintGO("�ϱ���", 30000);
	CreateSE("SEL01","se���L_�|��_�C�v�|����02");
	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ev/ev120_�Ď챾���i������֦_b.jpg");
	MusicStart("SEL01",3000,200,0,1000,null,false);
	FadeDelete("�ϱ���", 1000, true);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170010a03">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ک`���᤯�������Ѥ�ꡣ
	CreateSE("SE01","se�ճ�_��_����᤯��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm27",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������ҵ�������һ�����������ļ�֮ɽ�ڵģ�
��һ�����ˣ��Լ�����Χ�����������֮�ˡ���


����ͥԺ���������棬����˫��¥������ͬ��һ���
�����ң��в��е�ĳ����Ϊ��ɭ�谵����Ҳ������
Ӧ������Ϊ�˴���ŮΪ��ʹ���գ�����ŮΪ�������ԡ���

���˴������������������ĳ�Ů�����ô��������
��һ�䷿���ڴ˼���Ů����Ѫ������������������û
����㴫�Դ�δ��ϡ���


����֮ɽ�ڿ�ʼ֮ǰ������䷿�ݣ���һŮ������ī��
�ӱ����ڳ����ľ�ֽ֮�ϡ���

�����е��ռˣ��Ȳ��ᷱ����ʤɽ�٣��಻�Ż����ĳ�
��������ֻ����ͨ�˵�ƽ����磬�������˶��죬����
����������޾��ס���

���԰�ɫ������������̴��Ů�ˣ���������������
�㾡��������֮��������������Ҳʱ�з�������

�������ڴ���д��Ů������Ϊ��ʹ���գ�����������ͨ
�˵Ĵ��ȴ�������ϣ����ײ��࣬�ڴ˿ɳ�ֿ�����Ů
֮Ʒ�񡣡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�ġ��Ρ������ʤ�
	CreateSE("SEL01","se���L_�|��_�C�v�|����02");
	MusicStart("SEL01",3000,500,0,1000,null,false);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170020a03">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ک`���᤯�������Ѥ�ꡣ
	CreateSE("SE01","se�ճ�_��_����᤯��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ķ��������ֵ��£���ī���ͣ�ʱ��ͣ�ʲ�������
ʱ������������������ʱ��ǰ���ڡ���

����������������Ϧ������
�����������������̷�Ϊ��
���������������������˾���

�����ĵ�ë��ƮȻ���£���������������������Ϊ��
�У�����Ʈɢ����


����������������л������
�����������������ɳ���
��������������δ����Ȫ����
</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170030a03">
�������Ǻǡ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170040a03">
����Ϧ����������
�����̷�Ϊ�֡���
���������˾�������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170050a03">
��������Ϧ������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ�ȫ��������֦�����Ĥ���Ƥ��롣�ᤤ��Ѫ��
	CreateTextureSP("�}�ţ�10", 50, Center, Middle, "cg/ev/ev120_�Ď챾���i������֦_a.jpg");
	CreateTextureSP("�}�ţ�50", 50, Center, Middle, "cg/ev/ev120_�Ď챾���i������֦_a.jpg");
	FadeDelete("�}�ţ�100", 1000, true);

//���|��
//�������O��ľ�������w��
	CreateTextureEX("�}�ţ�100", 100, Center, Middle, "cg/ev/ev120_�Ď챾���i������֦_c.jpg");
	CreateTextureEXadd("�}�ţ�200", 100, Center, Middle, "cg/ev/ev120_�Ď챾���i������֦_c.jpg");
	SetBlur("�}�ţ�200", true, 3, 300, 100, false);

	CreateMovie("��`�ө`��", 150, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("��`�ө`��", 0, 0, null, true);
	Rotate("��`�ө`��", 0, 180, 180, 45, null,true);
	Zoom("��`�ө`��", 0, 6000, 8000, null, true);
	Move("��`�ө`��", 0, @-200, @+50, null, true);
	SetAlias("��`�ө`��","��`�ө`��");

	CreateColorEXadd("�}ɫ100", 1500, "White");

	OnSE("se��Ȼ_ɭ_ľ�������01",1000);
	OnSE("se���L_�Ɖ�_����02",1000);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/circle_15_00_0.png", true);

	Fade("��`�ө`��", 0, 1000, null, true);
	Shake("�}�ţ�200", 1000, 5, 10, 0, 0, 1000, null, false);
	Zoom("�}�ţ�200", 500, 2000, 2000, null, false);
	Fade("�}�ţ�200", 300, 300, null, false);
	Fade("�}�ţ�100", 300, 1000, null, false);
	Zoom("��`�ө`��", 6000, 40000, 10000, Axl1, false);
	FadeDelete("��`�ө`��", 5000, false);
	Fade("�}ɫ100", 300, 0, null, true);
	FadeDelete("�}�ţ�200", 300, false);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170060a03">
��������ѽ��ѽ����ô���أ���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170070a03">
�������˼�֮ɽ�ڡ�
���ɴ��������˰ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//���֥�å�������
	CreateColorEX("�}��ܞ", 5500, "#000000");
	Fade("�}��ܞ", 200, 1000, null, true);

	WaitPlay("@mbgm*", null);

//������̨�~�����ʤ�
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��
//�����衿
<voice name="����" class="����" src="voice/ma04/0170080a04">
������������������ɲ��С���

//�����衿
<voice name="����" class="����" src="voice/ma04/0170090a04">
���������һ������ƶ�����������
������С�㲻���������һ�ʮ�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���΁I�֥��åס����פ��ִ�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ev/ev121_�I�֤�ͻ����������_a.jpg");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�룺�ܥ����ʤ��ˤĤ������ʤ����_�J�g�ߣ�
//�������б���ʾ���ãǄI����
��
����<I>����ĸ�����ż��
    ��ɫ�һ���ױ</FONT>��</I>��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ѫװ�ץЩ`�ȥ�`�k��
//���פ��ִ�����ó��
	CreateSE("SE01a","se����_�z_�Щ`�ȥꥣ�k��");
	MusicStart("SE01a",0,1000,0,500,null,false);
	CreateTextureSP("�}�ţ�90", 90, Center, Middle, "cg/ev/ev121_�I�֤�ͻ����������_b.jpg");
	DrawDelete("�}�ţ�100", 1000, 1000, "effect_01_00_0", true);

	SetVolume("SEL01", 200, 0, null);
//����҆��
//����åɥ����ȥ�åɥ��󡣤ʤ���ʹ���ʳ��ä��L
	CreateSE("SE01b","se���L_����_Ź��05");
	CreateSE("SE01b","se���L_����_�z��������");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXmul("�}����", 500, "#CC0000");
	Fade("�}����", 0, 800, null, true);
	CreateTextureSP("�}�ţ�200", 200, -450, -100, "cg/ev/resize/ev909_��҆��_l.jpg");
	CreateTextureSP("�}�ţ���", 200, -450, -100, "cg/ev/resize/ev909_��҆��_l.jpg");
	Wait(10);
	FadeDelete("�}����", 400, false);
	Shake("�}�ţ���", 400, 10, 0, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������?!

�����˲�䡣
����׷�ɺ޵ĵ��ˣ����ڽ���Է�����Ӧ�������ģ�Ȼ��
��ȴ��Ϊ����ڶ��εľ�㵣����ɵر���������ͼ��


������ȫ���ʧ���С�
���·���ʲô������������<RUBY text="��������������">��һ����եȡ</RUBY>��

����������ʲô����?!

���ұ�����ʲô?!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ä���������҆�¡�
//�������`��
	PrintGO("�ϱ���", 15000);
	CreateTextureSP("�}�ţ�100", 100, 0, 0, "cg/ev/ev122_�R��������҆��.jpg");

	CreateSE("SE01a","se���L_��҆��_ܞ��01");
	CreateSE("SE01b","se���L_�Ɖ�_����02");

	Move("�}�ţ�100", 500, @0, -366, Dxl1, false);
	FadeDelete("�ϱ���", 300, true);


	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("�}�ţ�100", 600, 0, 20, 0, 0, 1000, null, true);

//������֦
	OnBG(90,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�}�ţ�100", 1000, true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170100a03">
������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170110a03">
�����ţ�
�����<RUBY text="����">���</RUBY>�������������ɡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170120a03">
��������಻�á���


//���������������ܥ�����o��
{	NwC("cg/fw/nw����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170121z00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤���������
	WaitKey(2000);

	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @-30, @0,"cg/st/st����_ͨ��_˽��.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����衿
<voice name="����" class="����" src="voice/ma04/0170130a04">
�������õ��ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170140a03">
�������ˡ�
�����ҵ�����ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170150a04">
���ǡ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ȤݤȤݤȤ�
	DeleteStA(300,true);
	CreateSE("SE01","se�ճ�_ˮ_ע��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0113]
//�����衿
<voice name="����" class="����" src="voice/ma04/0170160a04">
�����ã���С�㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170170a03">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤���������
	WaitKey(500);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170180a03">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170190a04">
�����ϵ�������Σ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170200a03">
����Ȼ��ʱ���ܶ�������û���⡣
����δ�˼���ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170210a04">
����˱�á���
��ʧ���ˡ���

//���ί���ʼ�᤿��`����
{	CreateSE("SE01","se�ճ�_����_�ί���_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170220a03">
���������ţ�
�������Ļ���������Ҳ���ԡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170230a03">
����û�н����ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170240a04">
�������ƺ���Ȼ����Ļ��
��������������������ˡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170250a03">
����ѽ��
�����ϧ��ר������֮ʱ����ͷ�أ�
̫�����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170260a04">
����Ҳ��Ů���ǵ�ְ�����ڡ�
�����Ƕ�������ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170270a04">
��������м��ݡ�
���ź����ǣ������ڵ�״̬����ǣ����ȥ
Ҳֻ�ᰭ�ְ��š���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170280a03">
����������ķ�չ���ˣ�
Ҳ��ȷ����Ů���ǵĸо���
���ǰ����������ͽ�����ʿ���˰ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170290a04">
���ǡ�
��������ʿ���¡�����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170300a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170310a04">
��������

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170320a03">
��<RUBY text="������">������</RUBY>����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170330a04">
�������жξ��룬����ֻ����ЩƬ�ϡ�
���������ص�ʮ���������

//�����衿
<voice name="����" class="����" src="voice/ma04/0170340a04">
��û�뵽���������£���<RUBY text="����">�ն�</RUBY>͵͵
�Ž�ȥ����ȷ���ء�
��һ��Ҫ��лѩ����¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170350a03">
���š�
���������ͣ������˺ܶණ��������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0170360a03">
��<RUBY text="��������������">��Ϊʲô������</RUBY>��
����˵�أ������š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0170370a04">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ����
//�Υե����롡"ma04_018vs.nss"�����ʥꥪ�B�YҪ����ԭ�_�J

}




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣱣���
scene ma04_017.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//���|��
//�������󤫤���
//���Ѥ��`�󡣸�����
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��", 15000, "#FFFFFF");
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01a","se���L_�|��_����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	FadeDelete("�}��", 1000, false);
	WaitKey(500);
	CreateSE("SE01b","se����_�z_װ��03");
	MusicStart("SE01b",0,1000,0,1300,null,false);
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170380a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ��
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");
	FadeStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ڼ����ˣ��ڼ�ʮ���ˣ�
�����ϵֵ�����ɱ������ǹ���ĺ�ɫװ�ף�����
<RUBY text="��������">�ֱ�����</RUBY>��

���ָ��ɸ�˿��˲�����⡢�߽⡣
��ɢ�䵽���档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170390a02">
����������
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160a]
���Ѿ��õ��ܶ�����ˡ�
��һ�������м��ص����š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 5100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}�ţ�100", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160b]
��Ȼ��������ա�
�����´λ���Լ�ɱ���ĵ��ˡ�

��ȷʵ�ء���
������������Ĺѵ������ӣ������ַ��֮�鷢йһͨ��
���ڿڶ�׼�ѻ��㡣

������Ϊֹ����
��һ������롣

��û�к�ڡ�
��ȴ�������ʡ���ϣ�����ٶ�ս��һ�ᡣ

����<RUBY text="������">�Ǹ���</RUBY>һ��
��Ȼ�����Ը��������һ�Σ��õ���ʵ�֡�

���������Ϊ�ضȹ��Լ�����������һ����ȣ�Ϊ����
�Ķ������������ڣ��������Ҹ��ġ�

�����һ������롣

��������������
���������ս�˫ȭ��

��Ϊ��ս�������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���h�T����ˤ�Ĥ����`��
//����҆�¡�������
//���M·ܞ�Q
	CreateTextureSP("�}�ţ�90", 5090, Center, Middle, "cg/ev/ev912_��҆�¸o�ݳh���å�_a.jpg");
	CreateSE("SE01","se���L_�|��_�h�T����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}�ţ�10*", 1000, true);


	WaitKey(1000);
	OnSE("se����_�z_�l����01",1000);

	CreateTextureEX("�}�ţ�100", 5100, Center, Middle, "cg/ev/ev909_��҆��.jpg");
	Fade("�}�ţ�100", 300, 1000, null, true);
	Delete("�}�ţ�90");

	CreateSE("SEL01","se���L_����_������01_L");
	MusicStart("SEL01",0,1000,0,500,null,true);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170400a02">
������������

{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170410a02">
��ι����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���뿪�ˡ�
���޴�ı��������������¡�

��û��ɱ�������Ǳ�ʾ������������������������
������
��<RUBY text="��������">ʮ�ִ�æ</RUBY>��

��װ�׷�����֨��֨��������Ѹ�ٵػ�ͷ��
�������Ǳߡ�

��<RUBY text="����">�Ǳ�</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170420a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��һ������ˡ�
������ⷢ����ʲô�¡�

������˵����
���Լ��ֵþ��ˡ�

�����Ǹ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ���18��������֦�����ä��Τ��{�����ޤ�����
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170430a02">
������������

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170440a02">
���֡��������ˣ�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170450a02">
����Ӧ���������������Ȼ���
�����¡���
������˵�����������Ѿ����Ǹ�
�˵Ķ����ˣ���������

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170460a02">
���š�
�����������Σ�

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170470a02">
����������ҪΪ�Ǹ��˶��ã�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170480a02">
��Ϊ���Ǹ��˵�ս�����á�
��Ϊ�˾Ⱥܶ��ˣ�Ϊ��ս�����ã�

//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170490a02">
���������Ȼ�������������
����Ҳȥ�ȱ��ˣ�

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170500a02">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤���
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fwһ��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170510a02">
�������⡣
�������Ƿ�����ʱ��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����û�н�����
��ս�����ڼ�����

������������������ս���Ļ�����
���������ھ���ô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170520a02">
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ս��ķ��򡪡�������ķ��򡪡�ң����
�����һ������������

��Ϊ��ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg042_���΍u�ذ�_03.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1000, 0, null);
	DrawDelete("�ϱ���", 500, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 500, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��Ȼ�󵽴
�������򺣰���

����ȫ�෴�ķ���
����ǰ���ǣ�������ʱ��Ϊ·��ĵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0170530a02">
��Ϊʲô��������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������������·�ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_018vs.nss"

}


