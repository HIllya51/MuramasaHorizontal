//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_050vs.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc04_050vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	#������ե饰 = #������ե饰+1;


..//������ָ��
//ǰ�ե����롡"mc04_049vs.nss"


//���x�k�ߥ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//���Х����k��
//�����Ф��ɩ`��
//�����`�४�`�Щ`
//�������ǤΥ��`�४�`�Щ`�����ϥ�����Ȥ��Ƥ�����

	PrintBG("�ϱ���", 30000);

	CreateTextureEXadd("�k��", 18500, 0, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureSP("�}EV100", 18000, 0, Middle, "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg");
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	CreateTextureEX("�}���k", 18150, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	Move("�}EV100", 0, -512, -288, null, true);
	SetBlur("�}EV100", true, 1, 300, 100, false);
	CreateSE("SE�ܥ�����","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE01","se���L_�n��_�zܞ��02");
	CreateSE("SE03","se���L_�Ɖ�_�z03");

	FadeDelete("�ϱ���", 200, true);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	EffectZoomDXadd(18500, 500, 100, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);

//	Move("�}EV100", 200, 0, 0, Axl3, false);
//	Zoom("�}EV100", 200, 1000, 1000, Axl3, true);

	Zoom("�}EV100", 100, 500, 500, Axl3, true);
	Wait(500);

	MusicStart("SE�ܥ�����",0,1000,0,1000,null,false);
	Fade("�k��", 0, 1000, null, true);
	Rotate("�k��", 300, @0, @0, @3600, null,false);
	Zoom("�k��", 300, 3000, 3000, Axl3, false);
	FadeDelete("�k��", 500, false);

//	Wait(1000);
	FadeDelete("�}EV100", 300, false);
	Zoom("�}���k", 0, 1100, 1100, null, true);


	EffectZoomDXadd(18500, 2000, 500, "#FFFFFF", "cg/ef/ef022_��������ɢ�A.jpg", false);

	Shake("�}���k", 3500, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}���k", 3500, 1300, 1300, Dxl2, false);
	Fade("�}���k", 50, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);


	Fade("�}ɫ100", 2000, 1000, Axl3, true);

	Wait(1000);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(2000);








if(#������ե饰 == 2){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�������`�४�`�Щ`����Ŀ
//���y�Ǻš��������`��
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_a.jpg");

	SoundPlay("@mbgm28",0,1000,true);


	FadeDelete("�ϱ���", 1000, true);


	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0010a14">
��������
��ԭ����ˣ��ܼ��ֵ�״���ء�

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0020a14">
���ӹ�ȥ�Ķ�ս��Ѱ����ʾӦ������Ч�ġ�
�����������ڣ��ҵ������������<RUBY text="��������">�ܹ�ʵ��</RUBY>
�ķ�����û�����塣

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0030a14">
��û������֮�����㣬������ʹ������֮��
��ĥ��ĵ���Ϊ�ο��������ֳ�����ֻ��ͽ
�͡����ѵ��㲻������Ϊ��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0040a14">
����ô����
��ѡ���Ѿ��������˰ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ȥ��

	SetVolume("@mbgm*", 3000, 0, null);

	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(2000);

}else if(#������ե饰 == 4){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�������`�४�`�Щ`�Ļ�Ŀ
//���y�Ǻš��������`��
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_a.jpg");

	SoundPlay("@mbgm28",0,1000,true);
	FadeDelete("�ϱ���", 1000, true);


	SetFwC("cg/fw/fw��_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0050a14">
�������ս���ء�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0060a14">
����Ҳ���Ѹ���ʲô���顣
��ֻ��˵Щ�ձ�ĵ�����ˡ���
����֮��������һ�°ɡ�

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0070a14">
������ǿ�����ĳ����߶��ԣ���һ��������Ҳ��
�������ĵط���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0080a14">
����Ϊ�����������������һ��ʧȥ���ܿ��ܾ�
��������ʴӡ�
������˵������ǿ�������ܻᱻ�з�<RUBY text="����������">����������</RUBY>��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/mc04/050vs0090a14">
����Ҳ�Ǿ�������������ɣ�
������������
����ô�о��Լ��Ļ��������̶ܴ��ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


#������ե饰 = 0;

//������ӛ�h���ڻ����ƥ����ȥ��
	SetVolume("@mbgm*", 3000, 0, null);
	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(2000);

}


}

..//������ָ��
//�Υե�����

