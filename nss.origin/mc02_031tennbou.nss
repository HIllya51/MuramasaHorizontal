//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031tennbou.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg083_�w�д��Ჿչ����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//�룺�ǥХå��ե饰
//	$����֦����_Flag = true;
//	$�L����kҊ_Flag = true;
//	$�I_Flag = true;


//����֦�����g��:if01
	if($����֦����_Flag==true){
//�L����kҊ�g��:if02
		if($�L����kҊ_Flag==true){
//�Iȡ�Üg��:if03
			if($�I_Flag==true){
				call_scene @->mc02_031tennbou_kkk.nss;
				$tennbou_k=false;//����֦�����ե饰�Τ�
				$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
				$tennbou_kkk=true;//����֦�ե饰+��kҊ�g��+�I���å�
				$tennbou_No=false;//�ե饰�ʤ�
			}else{
				call_scene @->mc02_031tennbou_kk.nss;
				$tennbou_k=false;//����֦�����ե饰�Τ�
				$tennbou_kk=true;//����֦�ե饰+��kҊ�g��
				$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
				$tennbou_No=false;//�ե饰�ʤ�
			}//if03 End
		}else{
			call_scene @->mc02_031tennbou_k.nss;
			$tennbou_k=true;//����֦�����ե饰�Τ�
			$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
			$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
			$tennbou_No=false;//�ե饰�ʤ�
		}//if02 End
//�ե饰�ʤ�
	}else{
		call_scene @->mc02_031tennbou_No.nss;
		$tennbou_k=false;//����֦�����ե饰�Τ�
		$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
		$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
		$tennbou_No=true;//�ե饰�ʤ�
	}//if01 End



//�Υݥ���ȴ_�J��
	if($tennbou_k){
	//�룺�ե饰���ڻ�
		$GameName = "mc02_031rouka3.nss";
		$�L����kҊ_Flag=true;
		$tennbou_k=false;//����֦�����ե饰�Τ�
		$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
		$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
		$tennbou_No=false;//�ե饰�ʤ�
//�룺��������{��
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kk){
		$GameName = "mc02_031rouka3.nss";
	//�룺�ե饰���ڻ�
		$tennbou_k=false;//����֦�����ե饰�Τ�
		$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
		$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
		$tennbou_No=false;//�ե饰�ʤ�
//�룺��������{��
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kkk){
		$GameName = "mc02_031end.nss";
	//�룺�ե饰���ڻ�
		$tennbou_k=false;//����֦�����ե饰�Τ�
		$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
		$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
		$tennbou_No=false;//�ե饰�ʤ�
	}else if($tennbou_No){
		$GameName = "mc02_031rouka3.nss";
	//�룺�ե饰���ڻ�
		$tennbou_k=false;//����֦�����ե饰�Τ�
		$tennbou_kk=false;//����֦�ե饰+��kҊ�g��
		$tennbou_kkk=false;//����֦�ե饰+��kҊ�g��+�I���å�
		$tennbou_No=false;//�ե饰�ʤ�
//�룺��������{��
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}

	//���ե饰���
//	$GameName = "mc02_031end.nss";



}

//ͨ�^�å�����ץ�
scene mc02_031tennbou.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_031rouka3.nss"

//��չ����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg083_�w�д��Ჿչ����_01.jpg");
	OnSE("se�ճ�_����_���_��01", 1000);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ĩβ�Ĳt��̨��
���������͵���ΰ׳�۵ľ�ɫ��������Ϊ���Ǿ��ô�ֻ��
�͹۹⴬��ͬ���������������ϲ�����������Ұ��һЩ
���ơ�

������עĿ��ֻ�о�ɫ��û���κο��ɵ����塣
�����ҳ����Ҳֻ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//���ե饰���
.//��������֦�����ʤ����ϨD�D�D�D�D�D�D�D�D�D�D
//������֦����_Flag���o������
..//mc02_031tennbou_No.nss
scene mc02_031tennbou_No.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg083_�w�д��Ჿչ����_01.jpg");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ۻ�ͨ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka3.nss"


}


.//��������֦��������ϨD�D�D�D�D�D�D�D�D�D�D
//������֦����_Flag���������
..//mc02_031tennbou_k.nss
scene mc02_031tennbou_k.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg083_�w�д��Ჿչ����_01.jpg");
	OnSE("se�ճ�_����_���_��01", 1000);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����֦_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0010a03">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����Ҫ��ȥ֮ʱ����
��
�������ξͻȻͣ���˽Ų���

������üͷ�����ŵ����ϵ�һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc02/031te0020a00">
����ô�ˣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0030a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������֦С��û�лش�����ǰȥ��
��ͣ������ע�ӵĵص�ǰ���Ӳ��涢�����

���Ҹ������ĺ��棬�Ƶ������档
���̴�����������ᣬվ���ű߾������ⲿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0040a03">
���������ˣ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031te0050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������������ָ��ĵط���
��
����ʲô����ֻ��һ�����ݡ�

����ξ��ָ�ף�����ؿ��˿����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/031te0060a00">
���������ǡ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0070a03">
��Կ�׿ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������Կ�׿ס�
�����ڴ�ξ��ָ��˺�����ı���֮�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/031te0080a00">
��������������ʲô�ģ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0090a03">
������ڰɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031te0100a00">
����ڣ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0110a03">
�����뿴��
������Χ�ĵ����ϡ����婖���׷�Բ����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0120a03">
����Ȼ��ȫǶ�ϡ�
������ϸ�۲�һ�£�����<RUBY text="����">�ŵ�</RUBY>���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/031te0130a00">
���ǣ���ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0140a03">
����������<RUBY text="����">ʲô</RUBY>��
��������һ��Ҫ�����ַ�������������
������������ô���Ͱɡ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031te0150a00">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0160a03">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031te0170a00">
������������
�����У�����̫���˰ɣ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0180a03">
���ǵġ���ʹ�����֮һ�Ŀ�����ҲҪ�˼���
�������������򲻴�Ϊ����������
ȥѰ��Կ�װɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031te0190a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������ǣ��������أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//���ե饰�{��
//��$�L����kҊ_Flag = true;

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka3.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�����L����kҊ�g
//���L����kҊ_Flag���������
..//mc02_031tennbou_kk.nss
scene mc02_031tennbou_kk.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg083_�w�д��Ჿչ����_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se�ճ�_����_���_��01", 1000);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������������������ڡ�
����������õ�Կ�׵Ļ����Ͳ��ܲ���
������Ķ����ˡ�

��Ҫ�ҵ�Կ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka3.nss"



}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�����I�Ф�
//���I_Flag���������
..//mc02_031tennbou_kkk.nss
scene mc02_031tennbou_kkk.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg083_�w�д��Ჿչ����_01.jpg");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����š�����������������ڡ�
�����ң����дӴ������������Կ�ס�

���һ���һ���������飬��Կ�ײ�����СС��
���ס�
��������������Կ�׵Ļ��������¾ͻᵽ��Ϊֹ�ˡ�
��û��ʱ��ȥ�ұ��Կ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0200a03">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031te0210a04">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_��å����01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ת����

//��������ꡣ

������ת���ˣ�

���ذ��������ˡ�
�����ɵؽ��ذ�Ų����ͨ���²�Ľ��ݾ�
��¶�����ǵ���ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc02/031te0220a00">
����ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031te0230a03">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���������䣬����ʾ�⡣
��
������������������ʱ�򣬲�����ԥ��

��������̤��̨�ס�
�������Ǵ����ξ�����̴��������Ӱ���롣

������Ų��������²㡭����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearWaitAll(2000, 2000);

//������̽���K��


..//������ָ��
//�Υե����롡"mc02_031end.nss"



}




