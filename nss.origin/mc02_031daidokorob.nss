
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokorob.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

//�룺�ǥХå��ե饰
//	$����֦����_Flag=true;
//	$�����ܥ��_Flag=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($����֦����_Flag==true){
		call_scene @->mc02_031daidokorob_gk.nss;
		$daidokorob_gk = true;//����֦��������
		$daidokorob_g = false;//�����ܥ�٤���
		$daidokorob_No = false;//�ե饰�ʤ�
	}else if($�����ܥ��_Flag == true){
		call_scene @->mc02_031daidokorob_g.nss;
		$daidokorob_gk = false;//����֦��������
		$daidokorob_g = true;//�����ܥ�٤���
		$daidokorob_No = false;//�ե饰�ʤ�
//�ե饰�k��
		$�����ܥ��_Flag = false;
		$����֦����_Flag = true;
	}else{
		call_scene @->mc02_031daidokorob_No.nss;
		$daidokorob_gk = false;//����֦��������
		$daidokorob_g = false;//�����ܥ�٤���
		$daidokorob_No = true;//�ե饰�ʤ�
	}



	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";
//�룺�ե饰���ڻ�
	$daidokorob_gk = false;//����֦��������
	$daidokorob_g = false;//�����ܥ�٤���
	$daidokorob_No = false;//�ե饰�ʤ�

}


scene mc02_031daidokorob.nss
{

//�룺�����ж���
..//������ָ��
//ǰ�ե����롡"mc02_031daidokoro.nss"


//�񥳥��
//�������ܥ�١�����֦�����ե饰�Ƿ��


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������ܥ�٤�֤äƤ��ʤ�����
//�������ܥ��_Flag���o������
..//mc02_031daidokorob_No
scene mc02_031daidokorob_No.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ů�͡�
����������ȡ��һ��ů����ů�˱������峿������
��������ָ���ѻ�Ϩ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������Ƅ�

..//������ָ��
//�Υե����롡"mc02_031daidokoroz.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������ܥ�٤�֤äƤ������
//�������ܥ��_Flag���������
..//mc02_031daidokorob_g
scene mc02_031daidokorob_g.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������
�����ڣ���Я���Ĳ��ǰ�ȫ�Ե��ҳ¾�
��Һ����ƿ�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����k���ܩ`��
	CreateTextureSP("�}����120", 120, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	OnSE("se�M��_���㥰_���äȤ�",1000);
	WaitKey(1300);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Shake("�}����120", 2000, 15, 25, 0, 0, 1000, DxlAuto, false);
	OnSE("se�M��_���ߥ���_���k01",1000);
	WaitKey(100);
	Fade("�ե�å����",200,900,null,true);
	WaitKey(1300);
	OnSE("se�M��_냇��_���饬��ȱ����02",1000);
	Fade("�ե�å����",3000,0,null,false);
	WaitKey(2700);
	Shake("�}����120", 1000, 3, 10, 0, 0, 300, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ǧ��һ��֮�ʣ�����ƿ�����컨�塣
��������˲�û�����ˡ�

�������컨����˶����˸�����
�����ţ��ж����Ӷ������������

{
	
	StL(1100, @-100, @15,"cg/st/st����_ͨ��_˽��.png");
	StC(1000, @-200, @15,"cg/st/st����֦_ͨ��_�Ʒ�a.png");

	FadeStC(1200,false);
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Shake("@StC*", 1500, 3, 3, 0, 0, 500, DxlAuto, false);
	Move("@StL*", 1700, @0, @-10, DxlAuto, false);
	Move("@StC*", 1200, @0, @-10, AxlAuto, false);
}
���������Ķ���ǡ����Ѭ�����˵�ģ������ĿΪ������
���������ξ�������̴Ӻ���

�������Ǳ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����120");
	SetFwC("cg/fw/fw����֦_ŭЦ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0410a03">
����������������
���������ˣ����á���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0420a04">
���ǡ��ǡ��ǡ�
����ѽ�����Ƕ�ô���ҵĻ�ӭ��
�����ն����ˡ���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0430a04">
��ɴ���һ���͹����ˡ�
����Ȼ�����Ǵ�С�������
��ͬ��ǿ�Ҹ�ЦƷζ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0440a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0450a00">
����ô���£���


{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0460a03">
�����������
��Ǳ���������ڲ����֮ʱ�������ƺ���
�������˿�ʼϮ���ĺ��죬��������Ҳ��
ʼ�ж�������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0470a04">
��Ǳ��ʱʹ�õ�·�߱������ˡ�
���������뷽�跨�µ�������컨�壬���ڷ���
����ô���ʱ�򡭡���


{	FwC("cg/fw/fw����֦_�@��.png");}

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0480a03">
��ͻȻ���ű߷����˱�ը����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0490a00">
��Ŷ����


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0500a04">
�����ҵ����컨�忪�˸��󶴡����˵��ǳɹ�
�ӳ��컨�壬��������֮�µĵذ��ϡ��ж���
����ǰ�Ǵն����ˣ�����ȼ�Ż��¯�������
����˹ζ������


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0510a03">
�������������
�ӣգУţҡ��ȣ��УУ١��ԣɣͣŰ�!!
����ֱ�����Ǵ������뻪���ռ�˹֮ҹһͬ
����һ������


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0520a00">
����������
���ܰ���æ�����ٺò����ˡ���


{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0530a03">
���ţ��ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Щ�̽��˵Ĵ����ξ���˵�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0540a04">
���ǺǺǡ�
��̫����̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Щ�̽��˵������̴�Ц�ˡ�

�������ðɡ�
����Ȼ�𽥻�����������ɱ����������ס�ҵĽţ�
���Ҵ粽���У�������Ӧ�þ���ת�ơ�

��������ը���ĵб��϶����ӵ������
��������ô˵�����ǵ��Ի�ϣ�ƾ�������ӵ�����
һ��������������

����������µķ��֡�
����ǰ����û�������ﱻ������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//�������ܥ��ʧ��������֦�Ⱥ���

//���ե饰�{��
//��$����֦����_Flag = true;
//��$�����ܥ��_Flag = false;


//�������Ƅ�

//�Υե����롡"mc02_031daidokoroz.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦�Ⱥ����g��
//������֦����_Flag��������ϡ����֤���ȄI��
..//mc02_031daidokorob_gk
scene mc02_031daidokorob_gk.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");

	Delete("�ϱ���");

	CreateTextureSP("�}����120", 120, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");

//�������á���䚢

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se���L_����_Ź��03",1000);
	WaitKey(550);
	Fade("�ե�å����",0,1000,null,true);
	Shake("�}����120", 300, 15, 15, 0, 0, 1000, Dxl3, false);
	Fade("�ե�å����",300,0,null,true);

	Delete("�}����120");


	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0550a03">
�������������ǵġ���
�������ǰ��Ļ��潫�����˵�û��ϵ��
�����ڲ��ǻ��и������������𣿡�


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0560a04">
��ȷʵ��ˣ��ն����ˡ�
��������Էٵ��Ⱥã����Ժ���У���Ϊ��׼��
���ͺ����ƿ�ġ���������ר��Ѱ��ը������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0570a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������վ��������
����������˵��û�����ڵ�ȷ��������ʱ��

����Ҫ���ǣ��ڱ����ﱻ����Ź����ǹغ�������
�����еķ�����Ҳ���Ǿ��Եġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������Ƅ�

..//������ָ��
//�Υե����롡"mc02_031daidokoroz.nss"

}


